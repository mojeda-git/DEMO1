@AbapCatalog.sqlViewName: 'ZV_RENTCARS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View for Rent Cars'
@Metadata.allowExtensions: true
define view Z_I_RENTING_CAR
  as select from Z_B_RENT_CARS as Cars
  association [1]    to Z_B_RENT_REM_DAYS as _RemDays     on $projection.Matricula = _RemDays.Matricula
  association [0..1] to Z_B_RENT_BRANDS   as _Brands      on $projection.Marca     = _Brands.Marca
  association [0..*] to Z_B_RENT_CUST     as _DetCustomer on $projection.Matricula = _DetCustomer.Matricula
{
  key Matricula,
      Marca,
      Modelo,
      Color,
      Motor,
      Potencia,
      Unidad,
      Combustible,
      Consumo,
      FechaFabricacion,
      Puertas,
      Precio,
      Moneda,
      Alquilado,
      Desde,
      Hasta,
      Imagen,
      // 0 neutral grey
      // 1 negative red
      // 2 critical yellow
      // 3 positive green
      case
      when _RemDays.Dias <= 0 then 0
      when _RemDays.Dias between 1 and 30 then 1
      when _RemDays.Dias between 31 and 100 then 2
      when _RemDays.Dias > 100 then 3
      else 0
      end as TiempoRenta,
      ''  as Estado,
      _RemDays.Dias as DiasRest,
      _Brands,
      _DetCustomer
}
