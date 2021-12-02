Sub deleteanomaly()

Dim i As Integer
Dim lastrow As Integer
lastrow = ActiveSheet.Cells.Find(What:="*", LookIn:=xlValues, SearchOrder:=xlByRows, SearchDirection:=xlPrevious).Row

For i = lastrow To 2 Step -1
If (Range("B" & i).Value < 100 Or Range("A" & i).Value > 1000) Then
Range("B" & i).EntireRow.Delete
End If
Next i

End Sub
