/// 
/// Sample class illustrating problems with inconsistent return codes
/// 
Class RetCodeProblems
{

/// 
/// This method returns a value, but none is declared
/// 
Method retvalNotDeclared()
{
    return 1
}

/// 
/// This method is declared to return a value, but not all paths do...
/// 
Method missingReturnPaths()
{
    if (condition) {
        quit 
    }
    return 0
}

}
