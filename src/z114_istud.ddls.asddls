@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interaface cds entity for student'
define root view entity z114_istud
  as select from z114_stud
  association [1] to z114_iclass       as _class on $projection.Class = _class.value_low
  association [1] to z114_idiv         as _div   on $projection.Div = _div.value_low
  association [1] to z114_ihouse       as _house on $projection.House = _house.value_low
  composition [0..*] of z114_istud_sub as _sub

{
  key id          as Id,
      fname       as Fname,
      lname       as Lname,
      class       as Class,
      _class.text as ClassDesc,
      div         as Div,
      _div.text   as DivDesc,
      house       as House,
      _house.text as HouseDesc,
      _class,
      _div,
      _house,
      _sub
}
