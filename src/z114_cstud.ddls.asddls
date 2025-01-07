@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for student'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity z114_cstud
  provider contract transactional_query
  as projection on z114_istud
{
  key Id,
      Fname,
      Lname,
      Class,
      ClassDesc,
      Div,
      DivDesc,
      House,
      HouseDesc,
      _class,
      _div,
      _house,
      _sub : redirected to composition child z114_cstud_sub
}
