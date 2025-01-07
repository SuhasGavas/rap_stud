@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interaface cds entity for division'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity z114_idiv
  as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name : 'Z114_DIV' )
{
  key domain_name,
  key value_position,
  key language,
      value_low,
      text
}
