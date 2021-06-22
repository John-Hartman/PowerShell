Sub QRadar_API_Metrics()
'
' QRadar_API_Metrics Macro
'

'
    Sheets("groupid").Select
    Columns("B:B").Select
    Sheets("logsource").Select
    Columns("D:D").Select
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    Range("D1").Select
    ActiveCell.FormulaR1C1 = "Company"
    Range("D2").Select
    ActiveCell.FormulaR1C1 = _
        "=INDEX(groupid!R2C2:R206C2,MATCH(RC[-1],groupid!R2C1:R206C1,0))"
    Range("D2").Select
    Selection.AutoFill Destination:=Range("D2:D5219"), Type:=xlFillDefault
    Range("D2:D5219").Select
    Range("H5220").Select
    ActiveWindow.ScrollRow = 5174
    ActiveWindow.ScrollRow = 5167
    ActiveWindow.ScrollRow = 5160
    ActiveWindow.ScrollRow = 5153
    ActiveWindow.ScrollRow = 5146
    ActiveWindow.ScrollRow = 5125
    ActiveWindow.ScrollRow = 5090
    ActiveWindow.ScrollRow = 5076
    ActiveWindow.ScrollRow = 5062
    ActiveWindow.ScrollRow = 5013
    ActiveWindow.ScrollRow = 4979
    ActiveWindow.ScrollRow = 4937
    ActiveWindow.ScrollRow = 4888
    ActiveWindow.ScrollRow = 4658
    ActiveWindow.ScrollRow = 4575
    ActiveWindow.ScrollRow = 4547
    ActiveWindow.ScrollRow = 4470
    ActiveWindow.ScrollRow = 4449
    ActiveWindow.ScrollRow = 4387
    ActiveWindow.ScrollRow = 4373
    ActiveWindow.ScrollRow = 4282
    ActiveWindow.ScrollRow = 4261
    ActiveWindow.ScrollRow = 3809
    ActiveWindow.ScrollRow = 3711
    ActiveWindow.ScrollRow = 3586
    ActiveWindow.ScrollRow = 3558
    ActiveWindow.ScrollRow = 3294
    ActiveWindow.ScrollRow = 3259
    ActiveWindow.ScrollRow = 3224
    ActiveWindow.ScrollRow = 3210
    ActiveWindow.ScrollRow = 3196
    ActiveWindow.ScrollRow = 3189
    ActiveWindow.ScrollRow = 3182
    ActiveWindow.ScrollRow = 3168
    ActiveWindow.ScrollRow = 3154
    ActiveWindow.ScrollRow = 3141
    ActiveWindow.ScrollRow = 3134
    ActiveWindow.ScrollRow = 3120
    ActiveWindow.ScrollRow = 3085
    ActiveWindow.ScrollRow = 2855
    ActiveWindow.ScrollRow = 2827
    ActiveWindow.ScrollRow = 2792
    ActiveWindow.ScrollRow = 2778
    ActiveWindow.ScrollRow = 2758
    ActiveWindow.ScrollRow = 2737
    ActiveWindow.ScrollRow = 2716
    ActiveWindow.ScrollRow = 2702
    ActiveWindow.ScrollRow = 2688
    ActiveWindow.ScrollRow = 2681
    ActiveWindow.ScrollRow = 2667
    ActiveWindow.ScrollRow = 2556
    ActiveWindow.ScrollRow = 2528
    ActiveWindow.ScrollRow = 2507
    ActiveWindow.ScrollRow = 2472
    ActiveWindow.ScrollRow = 2458
    ActiveWindow.ScrollRow = 2451
    ActiveWindow.ScrollRow = 2444
    ActiveWindow.ScrollRow = 2423
    ActiveWindow.ScrollRow = 2416
    ActiveWindow.ScrollRow = 2409
    ActiveWindow.ScrollRow = 2403
    ActiveWindow.ScrollRow = 2396
    ActiveWindow.ScrollRow = 2389
    ActiveWindow.ScrollRow = 2382
    ActiveWindow.ScrollRow = 2375
    ActiveWindow.ScrollRow = 2368
    ActiveWindow.ScrollRow = 2361
    ActiveWindow.ScrollRow = 2347
    ActiveWindow.ScrollRow = 2340
    ActiveWindow.ScrollRow = 2333
    ActiveWindow.ScrollRow = 2326
    ActiveWindow.ScrollRow = 2319
    ActiveWindow.ScrollRow = 2305
    ActiveWindow.ScrollRow = 2298
    ActiveWindow.ScrollRow = 2270
    ActiveWindow.ScrollRow = 2249
    ActiveWindow.ScrollRow = 2020
    ActiveWindow.ScrollRow = 1999
    ActiveWindow.ScrollRow = 1978
    ActiveWindow.ScrollRow = 1971
    ActiveWindow.ScrollRow = 1957
    ActiveWindow.ScrollRow = 1943
    ActiveWindow.ScrollRow = 1936
    ActiveWindow.ScrollRow = 1929
    ActiveWindow.ScrollRow = 1922
    ActiveWindow.ScrollRow = 1915
    ActiveWindow.ScrollRow = 1901
    ActiveWindow.ScrollRow = 1894
    ActiveWindow.ScrollRow = 1887
    ActiveWindow.ScrollRow = 1866
    ActiveWindow.ScrollRow = 1859
    ActiveWindow.ScrollRow = 1846
    ActiveWindow.ScrollRow = 1825
    ActiveWindow.ScrollRow = 1811
    ActiveWindow.ScrollRow = 1790
    ActiveWindow.ScrollRow = 1776
    ActiveWindow.ScrollRow = 1755
    ActiveWindow.ScrollRow = 1539
    ActiveWindow.ScrollRow = 1511
    ActiveWindow.ScrollRow = 1490
    ActiveWindow.ScrollRow = 1477
    ActiveWindow.ScrollRow = 1456
    ActiveWindow.ScrollRow = 1435
    ActiveWindow.ScrollRow = 1428
    ActiveWindow.ScrollRow = 1414
    ActiveWindow.ScrollRow = 1386
    ActiveWindow.ScrollRow = 1372
    ActiveWindow.ScrollRow = 1344
    ActiveWindow.ScrollRow = 1170
    ActiveWindow.ScrollRow = 1142
    ActiveWindow.ScrollRow = 1108
    ActiveWindow.ScrollRow = 1080
    ActiveWindow.ScrollRow = 1045
    ActiveWindow.ScrollRow = 1010
    ActiveWindow.ScrollRow = 1003
    ActiveWindow.ScrollRow = 843
    ActiveWindow.ScrollRow = 808
    ActiveWindow.ScrollRow = 752
    ActiveWindow.ScrollRow = 718
    ActiveWindow.ScrollRow = 578
    ActiveWindow.ScrollRow = 557
    ActiveWindow.ScrollRow = 537
    ActiveWindow.ScrollRow = 530
    ActiveWindow.ScrollRow = 516
    ActiveWindow.ScrollRow = 509
    ActiveWindow.ScrollRow = 495
    ActiveWindow.ScrollRow = 488
    ActiveWindow.ScrollRow = 481
    ActiveWindow.ScrollRow = 467
    ActiveWindow.ScrollRow = 460
    ActiveWindow.ScrollRow = 446
    ActiveWindow.ScrollRow = 432
    ActiveWindow.ScrollRow = 418
    ActiveWindow.ScrollRow = 411
    ActiveWindow.ScrollRow = 397
    ActiveWindow.ScrollRow = 251
    ActiveWindow.ScrollRow = 237
    ActiveWindow.ScrollRow = 230
    ActiveWindow.ScrollRow = 216
    ActiveWindow.ScrollRow = 209
    ActiveWindow.ScrollRow = 202
    ActiveWindow.ScrollRow = 195
    ActiveWindow.ScrollRow = 188
    ActiveWindow.ScrollRow = 182
    ActiveWindow.ScrollRow = 175
    ActiveWindow.ScrollRow = 168
    ActiveWindow.ScrollRow = 161
    ActiveWindow.ScrollRow = 154
    ActiveWindow.ScrollRow = 147
    ActiveWindow.ScrollRow = 140
    ActiveWindow.ScrollRow = 91
    ActiveWindow.ScrollRow = 77
    ActiveWindow.ScrollRow = 63
    ActiveWindow.ScrollRow = 35
    ActiveWindow.ScrollRow = 21
    ActiveWindow.ScrollRow = 7
    ActiveWindow.ScrollRow = 1
    Columns("C:C").Select
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    Range("C1").Select
    ActiveCell.FormulaR1C1 = "Log Source Type"
    Range("C2").Select
    ActiveCell.FormulaR1C1 = _
        "=INDEX(typeid!R2C1:R412C1,MATCH(RC[-1],typeid!R2C2:R412C2,0))"
    Range("C2").Select
    Selection.AutoFill Destination:=Range("C2:C5219"), Type:=xlFillDefault
    Range("C2:C5219").Select
    Range("I5220").Select
    ActiveWindow.ScrollRow = 5174
    ActiveWindow.ScrollRow = 5167
    ActiveWindow.ScrollRow = 5153
    ActiveWindow.ScrollRow = 5146
    ActiveWindow.ScrollRow = 5125
    ActiveWindow.ScrollRow = 5111
    ActiveWindow.ScrollRow = 5062
    ActiveWindow.ScrollRow = 5041
    ActiveWindow.ScrollRow = 4999
    ActiveWindow.ScrollRow = 4944
    ActiveWindow.ScrollRow = 4895
    ActiveWindow.ScrollRow = 4846
    ActiveWindow.ScrollRow = 4533
    ActiveWindow.ScrollRow = 4436
    ActiveWindow.ScrollRow = 4338
    ActiveWindow.ScrollRow = 4317
    ActiveWindow.ScrollRow = 4025
    ActiveWindow.ScrollRow = 4004
    ActiveWindow.ScrollRow = 3892
    ActiveWindow.ScrollRow = 3872
    ActiveWindow.ScrollRow = 3781
    ActiveWindow.ScrollRow = 3753
    ActiveWindow.ScrollRow = 3677
    ActiveWindow.ScrollRow = 3656
    ActiveWindow.ScrollRow = 3363
    ActiveWindow.ScrollRow = 3287
    ActiveWindow.ScrollRow = 3210
    ActiveWindow.ScrollRow = 3189
    ActiveWindow.ScrollRow = 3147
    ActiveWindow.ScrollRow = 3127
    ActiveWindow.ScrollRow = 3078
    ActiveWindow.ScrollRow = 2827
    ActiveWindow.ScrollRow = 2758
    ActiveWindow.ScrollRow = 2744
    ActiveWindow.ScrollRow = 2695
    ActiveWindow.ScrollRow = 2653
    ActiveWindow.ScrollRow = 2625
    ActiveWindow.ScrollRow = 2611
    ActiveWindow.ScrollRow = 2591
    ActiveWindow.ScrollRow = 2563
    ActiveWindow.ScrollRow = 2305
    ActiveWindow.ScrollRow = 2284
    ActiveWindow.ScrollRow = 2221
    ActiveWindow.ScrollRow = 2187
    ActiveWindow.ScrollRow = 2103
    ActiveWindow.ScrollRow = 2068
    ActiveWindow.ScrollRow = 2006
    ActiveWindow.ScrollRow = 1971
    ActiveWindow.ScrollRow = 1748
    ActiveWindow.ScrollRow = 1720
    ActiveWindow.ScrollRow = 1685
    ActiveWindow.ScrollRow = 1658
    ActiveWindow.ScrollRow = 1623
    ActiveWindow.ScrollRow = 1588
    ActiveWindow.ScrollRow = 1560
    ActiveWindow.ScrollRow = 1546
    ActiveWindow.ScrollRow = 1532
    ActiveWindow.ScrollRow = 1518
    ActiveWindow.ScrollRow = 1504
    ActiveWindow.ScrollRow = 1490
    ActiveWindow.ScrollRow = 1289
    ActiveWindow.ScrollRow = 1254
    ActiveWindow.ScrollRow = 1198
    ActiveWindow.ScrollRow = 1177
    ActiveWindow.ScrollRow = 1142
    ActiveWindow.ScrollRow = 1114
    ActiveWindow.ScrollRow = 1073
    ActiveWindow.ScrollRow = 1031
    ActiveWindow.ScrollRow = 1010
    ActiveWindow.ScrollRow = 829
    ActiveWindow.ScrollRow = 808
    ActiveWindow.ScrollRow = 766
    ActiveWindow.ScrollRow = 704
    ActiveWindow.ScrollRow = 690
    ActiveWindow.ScrollRow = 655
    ActiveWindow.ScrollRow = 432
    ActiveWindow.ScrollRow = 397
    ActiveWindow.ScrollRow = 370
    ActiveWindow.ScrollRow = 356
    ActiveWindow.ScrollRow = 335
    ActiveWindow.ScrollRow = 314
    ActiveWindow.ScrollRow = 307
    ActiveWindow.ScrollRow = 300
    ActiveWindow.ScrollRow = 293
    ActiveWindow.ScrollRow = 279
    ActiveWindow.ScrollRow = 272
    ActiveWindow.ScrollRow = 265
    ActiveWindow.ScrollRow = 258
    ActiveWindow.ScrollRow = 251
    ActiveWindow.ScrollRow = 237
    ActiveWindow.ScrollRow = 223
    ActiveWindow.ScrollRow = 216
    ActiveWindow.ScrollRow = 209
    ActiveWindow.ScrollRow = 202
    ActiveWindow.ScrollRow = 182
    ActiveWindow.ScrollRow = 49
    ActiveWindow.ScrollRow = 42
    ActiveWindow.ScrollRow = 35
    ActiveWindow.ScrollRow = 28
    ActiveWindow.ScrollRow = 21
    ActiveWindow.ScrollRow = 14
    ActiveWindow.ScrollRow = 7
    ActiveWindow.ScrollRow = 1
    Range("A1:H5219").Select
    Application.CutCopyMode = False
    ActiveSheet.ListObjects.Add(xlSrcRange, Range("$A$1:$H$5219"), , xlYes).Name = _
        "Table1"
    Range("Table1[#All]").Select
    ActiveSheet.ListObjects("Table1").Name = "data"
    Range("I1").Select
    Sheets("typeid").Select
    Sheets.Add After:=ActiveSheet
    Sheets("Sheet1").Select
    Sheets("Sheet1").Name = "bycustomer"
    Range("A1").Select
    ActiveWorkbook.PivotCaches.Create(SourceType:=xlDatabase, SourceData:= _
        "data", Version:=6).CreatePivotTable TableDestination:="bycustomer!R1C1", _
        TableName:="PivotTable7", DefaultVersion:=6
    Sheets("bycustomer").Select
    Cells(1, 1).Select
    With ActiveSheet.PivotTables("PivotTable7")
        .ColumnGrand = True
        .HasAutoFormat = True
        .DisplayErrorString = False
        .DisplayNullString = True
        .EnableDrilldown = True
        .ErrorString = ""
        .MergeLabels = False
        .NullString = ""
        .PageFieldOrder = 2
        .PageFieldWrapCount = 0
        .PreserveFormatting = True
        .RowGrand = True
        .SaveData = True
        .PrintTitles = False
        .RepeatItemsOnEachPrintedPage = True
        .TotalsAnnotation = False
        .CompactRowIndent = 1
        .InGridDropZones = False
        .DisplayFieldCaptions = True
        .DisplayMemberPropertyTooltips = False
        .DisplayContextTooltips = True
        .ShowDrillIndicators = True
        .PrintDrillIndicators = False
        .AllowMultipleFilters = False
        .SortUsingCustomLists = True
        .FieldListSortAscending = False
        .ShowValuesRow = False
        .CalculatedMembersInFilters = False
        .RowAxisLayout xlCompactRow
    End With
    With ActiveSheet.PivotTables("PivotTable7").PivotCache
        .RefreshOnFileOpen = False
        .MissingItemsLimit = xlMissingItemsDefault
    End With
    ActiveSheet.PivotTables("PivotTable7").RepeatAllLabels xlRepeatLabels
    ActiveSheet.Shapes.AddChart2(201, xlColumnClustered).Select
    ActiveChart.SetSourceData Source:=Range("bycustomer!$A$1:$C$18")
    With ActiveChart.PivotLayout.PivotTable.PivotFields("Company")
        .Orientation = xlRowField
        .Position = 1
    End With
    With ActiveChart.PivotLayout.PivotTable.PivotFields("Status")
        .Orientation = xlColumnField
        .Position = 1
    End With
    ActiveChart.PivotLayout.PivotTable.AddDataField ActiveChart.PivotLayout. _
        PivotTable.PivotFields("Log Source"), "Count of Log Source", xlCount
    ActiveSheet.PivotTables("PivotTable7").PivotFields("Status").AutoSort _
        xlDescending, "Status"
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveChart.ChartType = xlBarStacked100
    Range("K30").Select
    Sheets.Add After:=ActiveSheet
    Sheets("Sheet2").Select
    Sheets("Sheet2").Name = "errors"
    Range("A1").Select
    ActiveWorkbook.Worksheets("bycustomer").PivotTables("PivotTable7").PivotCache. _
        CreatePivotTable TableDestination:="errors!R1C1", TableName:="PivotTable8" _
        , DefaultVersion:=6
    Sheets("errors").Select
    Cells(1, 1).Select
    With ActiveSheet.PivotTables("PivotTable8")
        .ColumnGrand = True
        .HasAutoFormat = True
        .DisplayErrorString = False
        .DisplayNullString = True
        .EnableDrilldown = True
        .ErrorString = ""
        .MergeLabels = False
        .NullString = ""
        .PageFieldOrder = 2
        .PageFieldWrapCount = 0
        .PreserveFormatting = True
        .RowGrand = True
        .SaveData = True
        .PrintTitles = False
        .RepeatItemsOnEachPrintedPage = True
        .TotalsAnnotation = False
        .CompactRowIndent = 1
        .InGridDropZones = False
        .DisplayFieldCaptions = True
        .DisplayMemberPropertyTooltips = False
        .DisplayContextTooltips = True
        .ShowDrillIndicators = True
        .PrintDrillIndicators = False
        .AllowMultipleFilters = False
        .SortUsingCustomLists = True
        .FieldListSortAscending = False
        .ShowValuesRow = False
        .CalculatedMembersInFilters = False
        .RowAxisLayout xlCompactRow
    End With
    With ActiveSheet.PivotTables("PivotTable8").PivotCache
        .RefreshOnFileOpen = False
        .MissingItemsLimit = xlMissingItemsDefault
    End With
    ActiveSheet.PivotTables("PivotTable8").RepeatAllLabels xlRepeatLabels
    ActiveSheet.Shapes.AddChart2(201, xlColumnClustered).Select
    ActiveChart.SetSourceData Source:=Range("errors!$A$1:$C$18")
    With ActiveChart.PivotLayout.PivotTable.PivotFields("Company")
        .Orientation = xlRowField
        .Position = 1
    End With
    With ActiveChart.PivotLayout.PivotTable.PivotFields("Status")
        .Orientation = xlColumnField
        .Position = 1
    End With
    ActiveChart.PivotLayout.PivotTable.AddDataField ActiveChart.PivotLayout. _
        PivotTable.PivotFields("Log Source"), "Count of Log Source", xlCount
    With ActiveSheet.PivotTables("PivotTable8").PivotFields("Status")
        .PivotItems("SUCCESS").Visible = False
    End With
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveChart.ChartType = xlColumnStacked
    Range("L30").Select
    Sheets.Add After:=ActiveSheet
    Sheets("Sheet3").Select
    Sheets("Sheet3").Name = "eps"
    Range("A1").Select
    ActiveWorkbook.Worksheets("bycustomer").PivotTables("PivotTable7").PivotCache. _
        CreatePivotTable TableDestination:="eps!R1C1", TableName:="PivotTable9", _
        DefaultVersion:=6
    Sheets("eps").Select
    Cells(1, 1).Select
    With ActiveSheet.PivotTables("PivotTable9")
        .ColumnGrand = True
        .HasAutoFormat = True
        .DisplayErrorString = False
        .DisplayNullString = True
        .EnableDrilldown = True
        .ErrorString = ""
        .MergeLabels = False
        .NullString = ""
        .PageFieldOrder = 2
        .PageFieldWrapCount = 0
        .PreserveFormatting = True
        .RowGrand = True
        .SaveData = True
        .PrintTitles = False
        .RepeatItemsOnEachPrintedPage = True
        .TotalsAnnotation = False
        .CompactRowIndent = 1
        .InGridDropZones = False
        .DisplayFieldCaptions = True
        .DisplayMemberPropertyTooltips = False
        .DisplayContextTooltips = True
        .ShowDrillIndicators = True
        .PrintDrillIndicators = False
        .AllowMultipleFilters = False
        .SortUsingCustomLists = True
        .FieldListSortAscending = False
        .ShowValuesRow = False
        .CalculatedMembersInFilters = False
        .RowAxisLayout xlCompactRow
    End With
    With ActiveSheet.PivotTables("PivotTable9").PivotCache
        .RefreshOnFileOpen = False
        .MissingItemsLimit = xlMissingItemsDefault
    End With
    ActiveSheet.PivotTables("PivotTable9").RepeatAllLabels xlRepeatLabels
    ActiveSheet.Shapes.AddChart2(201, xlColumnClustered).Select
    ActiveChart.SetSourceData Source:=Range("eps!$A$1:$C$18")
    With ActiveChart.PivotLayout.PivotTable.PivotFields("Company")
        .Orientation = xlRowField
        .Position = 1
    End With
    ActiveChart.PivotLayout.PivotTable.AddDataField ActiveChart.PivotLayout. _
        PivotTable.PivotFields("AVG EPS"), "Sum of AVG EPS", xlSum
    ActiveSheet.PivotTables("PivotTable9").PivotFields("Company").AutoSort _
        xlDescending, "Sum of AVG EPS"
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveChart.ChartType = xlBarClustered
    ActiveSheet.PivotTables("PivotTable9").PivotFields("Company").AutoSort _
        xlAscending, "Company"
    ActiveSheet.PivotTables("PivotTable9").PivotFields("Company").AutoSort _
        xlAscending, "Sum of AVG EPS"
    Range("L30").Select
    Sheets.Add After:=ActiveSheet
    Sheets("Sheet4").Select
    Sheets("Sheet4").Name = "rate"
    Range("A1").Select
    ActiveWorkbook.Worksheets("bycustomer").PivotTables("PivotTable7").PivotCache. _
        CreatePivotTable TableDestination:="rate!R1C1", TableName:="PivotTable10", _
        DefaultVersion:=6
    Sheets("rate").Select
    Cells(1, 1).Select
    With ActiveSheet.PivotTables("PivotTable10")
        .ColumnGrand = True
        .HasAutoFormat = True
        .DisplayErrorString = False
        .DisplayNullString = True
        .EnableDrilldown = True
        .ErrorString = ""
        .MergeLabels = False
        .NullString = ""
        .PageFieldOrder = 2
        .PageFieldWrapCount = 0
        .PreserveFormatting = True
        .RowGrand = True
        .SaveData = True
        .PrintTitles = False
        .RepeatItemsOnEachPrintedPage = True
        .TotalsAnnotation = False
        .CompactRowIndent = 1
        .InGridDropZones = False
        .DisplayFieldCaptions = True
        .DisplayMemberPropertyTooltips = False
        .DisplayContextTooltips = True
        .ShowDrillIndicators = True
        .PrintDrillIndicators = False
        .AllowMultipleFilters = False
        .SortUsingCustomLists = True
        .FieldListSortAscending = False
        .ShowValuesRow = False
        .CalculatedMembersInFilters = False
        .RowAxisLayout xlCompactRow
    End With
    With ActiveSheet.PivotTables("PivotTable10").PivotCache
        .RefreshOnFileOpen = False
        .MissingItemsLimit = xlMissingItemsDefault
    End With
    ActiveSheet.PivotTables("PivotTable10").RepeatAllLabels xlRepeatLabels
    ActiveSheet.Shapes.AddChart2(201, xlColumnClustered).Select
    ActiveChart.SetSourceData Source:=Range("rate!$A$1:$C$18")
    With ActiveChart.PivotLayout.PivotTable.PivotFields("Status")
        .Orientation = xlRowField
        .Position = 1
    End With
    ActiveChart.PivotLayout.PivotTable.AddDataField ActiveChart.PivotLayout. _
        PivotTable.PivotFields("Log Source"), "Count of Log Source", xlCount
    ActiveChart.ChartType = xlDoughnut
    Range("D4").Select
    ActiveCell.FormulaR1C1 = "=RC[-2]/R[1]C[-2]"
    Range("D4").Select
    Selection.NumberFormat = "0.00%"
    Range("D6").Select
    Sheets.Add After:=ActiveSheet
    Sheets("Sheet5").Select
    Sheets("Sheet5").Name = "Dashboard"
    Cells.Select
    With Selection.Interior
        .Pattern = xlSolid
        .PatternColorIndex = xlAutomatic
        .ThemeColor = xlThemeColorLight1
        .TintAndShade = 4.99893185216834E-02
        .PatternTintAndShade = 0
    End With
    Range("A1").Select
    Sheets("bycustomer").Select
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveChart.ChartArea.Copy
    Sheets("Dashboard").Select
    Range("A1").Select
    ActiveSheet.Paste
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveSheet.Shapes("Chart 1").ScaleHeight 1.6354166667, msoFalse, _
        msoScaleFromTopLeft
    ActiveWindow.ScrollRow = 3
    ActiveWindow.ScrollRow = 2
    ActiveWindow.ScrollRow = 1
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveSheet.Shapes("Chart 1").ScaleHeight 1.5997174709, msoFalse, _
        msoScaleFromTopLeft
    Sheets("rate").Select
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveChart.ChartArea.Copy
    Sheets("Dashboard").Select
    Range("I1").Select
    ActiveSheet.Paste
    Range("I17").Select
    Sheets("errors").Select
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveChart.ChartArea.Copy
    Sheets("Dashboard").Select
    Range("I17").Select
    ActiveSheet.Paste
    ActiveSheet.ChartObjects("Chart 3").Activate
    ActiveSheet.Shapes("Chart 3").ScaleHeight 1.5659722222, msoFalse, _
        msoScaleFromTopLeft
    Sheets("eps").Select
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveChart.ChartArea.Copy
    Sheets("Dashboard").Select
    Range("Q1").Select
    ActiveSheet.Paste
    ActiveSheet.ChartObjects("Chart 4").Activate
    ActiveSheet.Shapes("Chart 4").ScaleHeight 2.6284722222, msoFalse, _
        msoScaleFromTopLeft
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveChart.ShowAllFieldButtons = False
    ActiveSheet.ChartObjects("Chart 2").Activate
    ActiveChart.ShowAllFieldButtons = False
    ActiveSheet.ChartObjects("Chart 3").Activate
    ActiveChart.ShowAllFieldButtons = False
    ActiveSheet.ChartObjects("Chart 4").Activate
    ActiveChart.ShowAllFieldButtons = False
    ActiveSheet.ChartObjects("Chart 1").Activate
    With ActiveSheet.Shapes("Chart 1").Fill
        .Visible = msoTrue
        .ForeColor.ObjectThemeColor = msoThemeColorText1
        .ForeColor.TintAndShade = 0
        .ForeColor.Brightness = 0.150000006
        .Transparency = 0
        .Solid
    End With
    ActiveSheet.ChartObjects("Chart 2").Activate
    With ActiveSheet.Shapes("Chart 2").Fill
        .Visible = msoTrue
        .ForeColor.ObjectThemeColor = msoThemeColorText1
        .ForeColor.TintAndShade = 0
        .ForeColor.Brightness = 0.150000006
        .Transparency = 0
        .Solid
    End With
    ActiveSheet.ChartObjects("Chart 3").Activate
    With ActiveSheet.Shapes("Chart 3").Fill
        .Visible = msoTrue
        .ForeColor.ObjectThemeColor = msoThemeColorText1
        .ForeColor.TintAndShade = 0
        .ForeColor.Brightness = 0.150000006
        .Transparency = 0
        .Solid
    End With
    ActiveSheet.ChartObjects("Chart 4").Activate
    With ActiveSheet.Shapes("Chart 4").Fill
        .Visible = msoTrue
        .ForeColor.ObjectThemeColor = msoThemeColorText1
        .ForeColor.TintAndShade = 0
        .ForeColor.Brightness = 0.150000006
        .Transparency = 0
        .Solid
    End With
    ActiveSheet.ChartObjects("Chart 2").Activate
    ActiveSheet.ChartObjects("Chart 3").Activate
    ActiveSheet.ChartObjects("Chart 1").Activate
    Application.CommandBars("Format Object").Visible = False
    ActiveWorkbook.ShowPivotTableFieldList = False
    ActiveSheet.ChartObjects("Chart 2").Activate
    ActiveChart.ChartTitle.Select
    Selection.Delete
    ActiveSheet.ChartObjects("Chart 4").Activate
    ActiveChart.ChartTitle.Select
    Selection.Delete
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveChart.ChartColor = 13
    ActiveSheet.ChartObjects("Chart 2").Activate
    ActiveChart.ChartColor = 12
    ActiveSheet.ChartObjects("Chart 3").Activate
    ActiveChart.ChartColor = 12
    ActiveSheet.ChartObjects("Chart 4").Activate
    ActiveChart.ChartColor = 12
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveChart.FullSeriesCollection(3).Select
    With Selection.Format.Fill
        .Visible = msoTrue
        .ForeColor.ObjectThemeColor = msoThemeColorAccent2
        .ForeColor.TintAndShade = 0
        .ForeColor.Brightness = 0
        .Transparency = 0
        .Solid
    End With
    ActiveChart.FullSeriesCollection(2).Select
    With Selection.Format.Fill
        .Visible = msoTrue
        .ForeColor.ObjectThemeColor = msoThemeColorAccent4
        .ForeColor.TintAndShade = 0
        .ForeColor.Brightness = 0
        .Transparency = 0
        .Solid
    End With
    Range("H14").Select
    ActiveSheet.Shapes.AddShape(msoShapeRectangle, 497, 88.5, 79, 33.5).Select
    Selection.Formula = "=rate!D4"
    Selection.ShapeRange.TextFrame2.TextRange.ParagraphFormat.Alignment = _
        msoAlignCenter
    Selection.ShapeRange.TextFrame2.TextRange.ParagraphFormat.Alignment = _
        msoAlignCenter
    Selection.ShapeRange.TextFrame2.VerticalAnchor = msoAnchorMiddle
    Selection.ShapeRange.Fill.Visible = msoFalse
    Selection.ShapeRange.Line.Visible = msoFalse
    With Selection.ShapeRange.TextFrame2.TextRange.Font.Fill
        .Visible = msoTrue
        .ForeColor.ObjectThemeColor = msoThemeColorBackground1
        .ForeColor.TintAndShade = 0
        .ForeColor.Brightness = 0
        .Transparency = 0
        .Solid
    End With
    Range("P13").Select
End Sub