/// 
/// Sample class illustrating problems with inconsistent return codes
/// 
Class RetCodeProblems [ Abstract ]
{

/// 
/// This method returns a value, but none is declared
/// 
ClassMethod retvalNotDeclared()
{
    return 1
}

/// 
/// This method is declared to return a value, but not all paths do...
/// 
ClassMethod missingReturnPaths()
{
    if (condition) {
        return 
    }
    return 0
}

}
