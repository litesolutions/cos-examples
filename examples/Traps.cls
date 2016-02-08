///
/// Class demonstrating issues with regards to language traps
///
Class Traps [ Abstract ]
{

Property condition as %Boolean;

///
/// Trap: using a legacy if statement...
///
/// The following will actually print "hello world" (then a newline)
///
ClassMethod legacyIfTrap()
{
    if (condition)
        w "hello "
    w "world",!
}

///
/// Trap: the "quit" in this method is actually a line label, not a command...
///
ClassMethod indentationTrap()
{
    w "hi",!
quit
}

/// 
/// Local variables will only see their 32 first characters taken into account.
/// More than that and the name is truncated...
/// 
ClassMethod varNameTooLong()
{
    set xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = 1
    w xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, !
}

/// 
/// When setting an initial value with #Dim, it actually generates a hidden
/// SET statement...
/// 
ClassMethod dimSideEffect()
{
    #dim x as %String = "world"
    w "hello ", x, "!", !
}

}
