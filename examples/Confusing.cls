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

}

