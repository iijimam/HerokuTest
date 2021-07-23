Class Test.Person Extends %Persistent
{

Property Name As %String;

Property Email As %String;

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
