Sub peak()

Dim i As Integer
Dim lastrow As Integer
Dim x As Long
Dim y As Long
Dim a As Integer
Dim b As Integer
Dim period As Integer
Dim threshold As Integer

a = 2
'''threshold = 500 '''DEFINE THRESHOLD

Range("D1") = "Time/ms"
Range("E1") = "Maximum blood pulse signal reading"
lastrow = ActiveSheet.Cells.Find(What:="*", LookIn:=xlValues, SearchOrder:=xlByRows, SearchDirection:=xlPrevious).Row

For i = 3 To 105
x = Range("B" & i - 1)
y = Range("B" & (i + 1))
If (Range("B" & i) > x And Range("B" & i) > y) Then
Range("D" & a) = Range("A" & i)
Range("E" & a) = Range("B" & i)
a = a + 1
End If
Next i

Range("G1") = "Average period/ms"
b = 0
period = 0
For i = 2 To a - 1
period = period + (Range("D" & i + 1).Value - Range("D" & i).Value)
b = b + 1
Next i
If period < 0 Then
period = -1 * period
End If
'Range("G2") = period / b
Range("H1") = "Average heart rate/bpm"
'Range("H2") = 60000 / (Range("G2").Value)

End Sub
