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
    #dim p as examples.Person
    set p = ##class(examples.Person).%New()

    // Indirect access to a property
    w $property(p, "Name"), !

    // Example of a confusing $case usage
    w $case(p.Name, "Barry": "White", "Lenny": "Kravitz"), !
}
}

