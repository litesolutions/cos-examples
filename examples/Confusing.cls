///
/// Examples of confusing ObjectScript code.
/// Don't do this at home!
///
Class examples.Confusing [ Abstract ]
{

///
/// You can declare local variables (even properties and parameters!) with the
/// same name as builtin commands...
///
ClassMethod confusingLocalVar()
{
    set set = 2
    w "set is ", set, !
}

///
/// Given two numbers n1 and n2, there are two ways to check whether n1 is
/// less than or equal to n2:
///
/// * the first is to use the obvious <= operator...
/// * but you can also use "'>", which literally means "not strictly greater".
///
/// Here we use the non obvious second form.
///
ClassMethod lessThanOrEqual(n1 as %Integer, n2 as %Integer) as %Boolean
{
    return n1 '> n2 // really, you want to write n1 <= n2 instead
}

///
/// ObjectScript allows any expression as a boolean expression...
/// ... And this includes expressions not surrounded by parens.
///
/// While it is possible, it can be quickly confusing...
///
ClassMethod booleanExpressionWithoutParens()
{
    if c {
        w "c is true", !
    }
}

///
/// The QUIT command can be used to either break from loops *OR* try/catch,
/// but out of these contexts, it is used to break out of the loop/block.
///
/// Recommendation: use RETURN instead!
///
ClassMethod confusingQuitUsage()
{
    for i=1:1:4 {
        if (i = 2) {
            w "outta here"
            // This one actually breaks out of the loop...
            // IT DOES NOT exit the method!
            quit
        }
    }
    w "Meh... I'm here"
    // Use RETURN instead! Less confusing...
    quit
}

}

