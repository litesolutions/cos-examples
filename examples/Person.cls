/// 
/// A very simple class...
/// 
Class Person
{

/// 
/// Note the lack of MAXLEN here
/// 
Property Name as %String;

///
/// Our method...
///
ClassMethod foo()
{
    // We set the value directly in #dim... Which has a side effect!
    #dim p as examples.Person = ##class(examples.Person).%New()

    w $property(p, "Name"), !
}
}

