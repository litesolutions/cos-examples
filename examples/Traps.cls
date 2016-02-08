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

}
