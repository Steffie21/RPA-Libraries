Sub SumColumns(sRange As String, sSheetName As String) 
    Worksheets(sSheetName).Activate

    Dim rng As Range
    Set rng = Range(sRange)

    Dim rCol As Range
    For Each rCol In rng.Columns
        Cells(rCol.Rows.Count + rCol.row, rCol.Column) = WorksheetFunction.Sum(rCol)
    Next rCol
End Sub

Sub SumRows(sRange As String, sSheetName As String) 
    Worksheets(sSheetName).Activate

    Dim rng As Range
    Set rng = Range(sRange)

    Dim rRow As Range
    For Each rRow In rng.Rows
        Cells(rRow.row, rRow.Columns.Count + rRow.Column) = WorksheetFunction.Sum(rRow)
    Next rRow
End Sub