Class Test.Person Extends (%Persistent,%JSON.Adaptor)
{

Property Name As %String;

Property Email As %String;

ClassMethod CreateOneData()
{
    set p=..%New()
    set p.Name="テスト太郎"
    set p.Email="test@mail.com"
    set st=p.%Save()
}
Storage Default
{
<Data name="PersonDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Email</Value>
</Value>
</Data>
<DataLocation>^Test.PersonD</DataLocation>
<DefaultData>PersonDefaultData</DefaultData>
<IdLocation>^Test.PersonD</IdLocation>
<IndexLocation>^Test.PersonI</IndexLocation>
<StreamLocation>^Test.PersonS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
