@AbapCatalog.sqlViewName: 'ZV_RENTCUST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Basic View for Rent Customer'
@Metadata.allowExtensions: true
define view Z_B_RENT_CUST
  as select from ztb_rent_cust
{
  key doc_id    as ID,
  key matricula as Matricula,
      nombres   as Nombre,
      apellidos as Apellidos,
      email     as Correo,
      cntr_type as TipoContrato
}
