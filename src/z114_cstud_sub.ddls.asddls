@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for student subject'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity z114_cstud_sub
  as projection on z114_istud_sub
{
  key Id,
  key StudId,
      Subject,
      SubDesc,
      Grade,
      GradeDesc,
      _sub,
      _grade,
      _stud : redirected to parent z114_cstud
}
