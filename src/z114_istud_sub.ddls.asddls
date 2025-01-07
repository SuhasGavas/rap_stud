@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interaface cds entity for student subject'
define view entity z114_istud_sub
  as select from z114_stud_sub
  association [1] to z114_isubject     as _sub   on $projection.Subject = _sub.value_low
  association [1] to z114_igrade       as _grade on $projection.Grade = _grade.value_low
  association     to parent z114_istud as _stud  on $projection.StudId = _stud.Id
{
  key id          as Id,
  key stud_id     as StudId,
      subject     as Subject,
      _sub.text   as SubDesc,
      grade       as Grade,
      _grade.text as GradeDesc,
      _sub,
      _grade,
      _stud
}
