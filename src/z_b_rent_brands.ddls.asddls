@AbapCatalog.sqlViewName: 'ZV_RENTBRAND'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Basic View for Rent Brands'
define view Z_B_RENT_BRANDS
  as select from ztb_rent_brands
{
  key marca as Marca
}
