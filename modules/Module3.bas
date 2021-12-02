Sub plot()

Set x = Range("J1:Y50")
Set embeddedchartx = ActiveSheet.ChartObjects.Add(Left:=x.Left, Width:=x.Width, Top:=x.Top, Height:=x.Height)
embeddedchartx.Chart.SetSourceData Source:=ActiveSheet.Range("B2:B101")
embeddedchartx.Chart.ChartType = xlXYScatterLines

ActiveSheet.ChartObjects(1).Activate
With ActiveChart
.SetElement (msoElementChartTitleAboveChart)
.ChartArea.Border.LineStyle = xlNone
.ChartTitle.Text = "Plethysmograph " & Format(Date, "dd/mm/yy") & " at " & Format(Time, "hh:mm:ss")
.Axes(xlValue, xlPrimary).HasTitle = True
.Axes(xlValue, xlPrimary).AxisTitle.Characters.Text = "Blood pulse"
.ChartArea.Font.Color = RGB(64, 64, 64)
.ChartTitle.Font.Color = RGB(0, 32, 96)
End With

End Sub
