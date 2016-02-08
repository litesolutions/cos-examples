/// 
/// A class demonstrating code where some type declarations are incomplete
/// 
Class IncompleteDeclarations
{

/// 
/// This method declares (and assigns!) a variable via #dim, but does not specify
/// any type
/// 
Method dimWithNoType()
{
    #dim x = 1
    w x,!
}

/// 
/// This method omits the type of one of its arguments
/// 
Method argWithNoType(x as %Integer, y) as %Integer
{
    return x + y
}

}

