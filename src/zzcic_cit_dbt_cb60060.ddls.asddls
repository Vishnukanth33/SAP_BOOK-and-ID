@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZCICIT_DBT_CB60060'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZCIC_CIT_DBT_CB60060
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZCIR_CIT_DBT_CB60060
  association [1..1] to ZZCIR_CIT_DBT_CB60060 as _BaseEntity on $projection.BOOKID = _BaseEntity.BOOKID
{
  key BookID,
  BookName,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  _BaseEntity
}
