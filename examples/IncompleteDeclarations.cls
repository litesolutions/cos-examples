/// 
/// A class demonstrating code where some type declarations are incomplete
/// 
Class IncompleteDeclarations [ Abstract ]
{

/// 
/// This method declares a variable via #dim, but does not specify any type
/// 
ClassMethod dimWithNoType()
{
    #dim x
    set x = 1
    write x,!
}

/// 
/// This method omits the type of one of its arguments
/// 
ClassMethod argWithNoType(x as %Integer, y) as %Integer
{
    return x + y
}

}

