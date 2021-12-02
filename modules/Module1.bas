Sub getdata()

Dim strfile As String
Dim i As Integer
'Dim lastrow As Integer
'lastrow = ActiveSheet.Cells.Find(What:="*", LookIn:=xlValues, SearchOrder:=xlByRows, SearchDirection:=xlPrevious).Row

Sheets.Add After:=Sheets(Sheets.Count)
ActiveSheet.Name = Format(Date, "dd-mm-yyyy") & "|" & Format(Time, "hh-mm-ss")
Application.CutCopyMode = False
Range("A1") = "Time/ms"
Range("B1") = "Blood Pulse Signal Reading"

 With ActiveSheet.QueryTables.Add(Connection:= _
        "TEXT;/Users/remeliashirlley/Desktop/Pleth/dataset1.csv", Destination:=Range( _
        "$A$2"))
        .Name = "plethysmograph"
        .FieldNames = True
        .RowNumbers = False
        .FillAdjacentFormulas = False
        .PreserveFormatting = True
        .RefreshOnFileOpen = False
        .RefreshStyle = xlInsertDeleteCells
        .SavePassword = False
        .SaveData = True
        .RefreshPeriod = False
        .TextFilePromptOnRefresh = False
        .TextFilePlatform = 65001
        .TextFileStartRow = 1
        .TextFileParseType = xlDelimited
        .TextFileTextQualifier = xlTextQualifierDoubleQuote
        .TextFileConsecutiveDelimiter = False
        .TextFileTabDelimiter = True
        .TextFileSemicolonDelimiter = False
        .TextFileCommaDelimiter = True
        .TextFileSpaceDelimiter = False
        .TextFileColumnDataTypes = Array(1, 1)
        .TextFileTrailingMinusNumbers = True
        .Refresh BackgroundQuery:=False
    End With
    
'Call remove

    
End Sub
