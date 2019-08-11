Sub getGroupings()
    Dim buffer, z19_lat, z19_long, z18_lat, z_18long, z17_lat, z17_long, z16_lat, z16_long, z15_lat, z15_long, z14_lat, z14_long, z13_lat, z13_long, z12_lat, z12_long, z11_lat, z11_long, z10_lat, z10_long, z9_lat, z9_long, z8_lat, z8_long, z7_lat, z7_long, z6_lat, z6_long, Lat, Lng As Double
    z19_lat = 0.00115
    z18_lat = 0.0023
    z17_lat = 0.0046
    z16_lat = 0.0092
    z15_lat = 0.0184
    z14_lat = 0.0368
    z13_lat = 0.0736
    z12_lat = 0.1472
    z11_lat = 0.2944
    z10_lat = 0.5888
    z9_lat = 1.1776
    z8_lat = 2.3552
    z7_lat = 4.7104
    z6_lat = 9.4208
    
    z19_long = 0.00178
    z18_long = 0.00356
    z17_long = 0.00712
    z16_long = 0.01424
    z15_long = 0.02848
    z14_long = 0.05696
    z13_long = 0.11392
    z12_long = 0.22784
    z11_long = 0.45568
    z10_long = 0.91136
    z9_long = 1.82272
    z8_long = 3.64544
    z7_long = 7.29088
    z6_long = 14.58176
    buffer = 2

    For k = 4 To 100000
        Lat = ThisWorkbook.Worksheets(1).Range("k" & k)
        Lng = ThisWorkbook.Worksheets(1).Range("l" & k)
        If Lat <= z19_lat And Lng <= z19_long Then
            ThisWorkbook.Worksheets(2).Range("H" & buffer).Value = Lat
            ThisWorkbook.Worksheets(2).Range("A" & buffer).Value = ThisWorkbook.Worksheets(1).Range("A" & k)
            ThisWorkbook.Worksheets(2).Range("B" & buffer).Value = ThisWorkbook.Worksheets(1).Range("E" & k)
            ThisWorkbook.Worksheets(2).Range("C" & buffer).Value = ThisWorkbook.Worksheets(1).Range("F" & k)
            ThisWorkbook.Worksheets(2).Range("D" & buffer).Value = ThisWorkbook.Worksheets(1).Range("G" & k)
            ThisWorkbook.Worksheets(2).Range("E" & buffer).Value = ThisWorkbook.Worksheets(1).Range("H" & k)
            ThisWorkbook.Worksheets(2).Range("F" & buffer).Value = ThisWorkbook.Worksheets(1).Range("I" & k)
            ThisWorkbook.Worksheets(2).Range("G" & buffer).Value = ThisWorkbook.Worksheets(1).Range("J" & k)
            ThisWorkbook.Worksheets(2).Range("I" & buffer).Value = ThisWorkbook.Worksheets(1).Range("L" & k)
            ThisWorkbook.Worksheets(2).Range("J" & buffer).Value = 19
            buffer = buffer + 1

        ElseIf Lat <= z18_lat And Lng <= z18_long Then
            ThisWorkbook.Worksheets(2).Range("H" & buffer).Value = Lat
            ThisWorkbook.Worksheets(2).Range("A" & buffer).Value = ThisWorkbook.Worksheets(1).Range("A" & k)
            ThisWorkbook.Worksheets(2).Range("B" & buffer).Value = ThisWorkbook.Worksheets(1).Range("E" & k)
            ThisWorkbook.Worksheets(2).Range("C" & buffer).Value = ThisWorkbook.Worksheets(1).Range("F" & k)
            ThisWorkbook.Worksheets(2).Range("D" & buffer).Value = ThisWorkbook.Worksheets(1).Range("G" & k)
            ThisWorkbook.Worksheets(2).Range("E" & buffer).Value = ThisWorkbook.Worksheets(1).Range("H" & k)
            ThisWorkbook.Worksheets(2).Range("F" & buffer).Value = ThisWorkbook.Worksheets(1).Range("I" & k)
            ThisWorkbook.Worksheets(2).Range("G" & buffer).Value = ThisWorkbook.Worksheets(1).Range("J" & k)
            ThisWorkbook.Worksheets(2).Range("I" & buffer).Value = ThisWorkbook.Worksheets(1).Range("L" & k)
            ThisWorkbook.Worksheets(2).Range("J" & buffer).Value = 18
            buffer = buffer + 1

        ElseIf Lat <= z17_lat And Lng <= z17_long Then
            ThisWorkbook.Worksheets(2).Range("H" & buffer).Value = Lat
            ThisWorkbook.Worksheets(2).Range("A" & buffer).Value = ThisWorkbook.Worksheets(1).Range("A" & k)
            ThisWorkbook.Worksheets(2).Range("B" & buffer).Value = ThisWorkbook.Worksheets(1).Range("E" & k)
            ThisWorkbook.Worksheets(2).Range("C" & buffer).Value = ThisWorkbook.Worksheets(1).Range("F" & k)
            ThisWorkbook.Worksheets(2).Range("D" & buffer).Value = ThisWorkbook.Worksheets(1).Range("G" & k)
            ThisWorkbook.Worksheets(2).Range("E" & buffer).Value = ThisWorkbook.Worksheets(1).Range("H" & k)
            ThisWorkbook.Worksheets(2).Range("F" & buffer).Value = ThisWorkbook.Worksheets(1).Range("I" & k)
            ThisWorkbook.Worksheets(2).Range("G" & buffer).Value = ThisWorkbook.Worksheets(1).Range("J" & k)
            ThisWorkbook.Worksheets(2).Range("I" & buffer).Value = ThisWorkbook.Worksheets(1).Range("L" & k)
            ThisWorkbook.Worksheets(2).Range("J" & buffer).Value = 17
            buffer = buffer + 1

        ElseIf Lat <= z16_lat And Lng <= z16_long Then
            ThisWorkbook.Worksheets(2).Range("H" & buffer).Value = Lat
            ThisWorkbook.Worksheets(2).Range("A" & buffer).Value = ThisWorkbook.Worksheets(1).Range("A" & k)
            ThisWorkbook.Worksheets(2).Range("B" & buffer).Value = ThisWorkbook.Worksheets(1).Range("E" & k)
            ThisWorkbook.Worksheets(2).Range("C" & buffer).Value = ThisWorkbook.Worksheets(1).Range("F" & k)
            ThisWorkbook.Worksheets(2).Range("D" & buffer).Value = ThisWorkbook.Worksheets(1).Range("G" & k)
            ThisWorkbook.Worksheets(2).Range("E" & buffer).Value = ThisWorkbook.Worksheets(1).Range("H" & k)
            ThisWorkbook.Worksheets(2).Range("F" & buffer).Value = ThisWorkbook.Worksheets(1).Range("I" & k)
            ThisWorkbook.Worksheets(2).Range("G" & buffer).Value = ThisWorkbook.Worksheets(1).Range("J" & k)
            ThisWorkbook.Worksheets(2).Range("I" & buffer).Value = ThisWorkbook.Worksheets(1).Range("L" & k)
            ThisWorkbook.Worksheets(2).Range("J" & buffer).Value = 16
            buffer = buffer + 1

        ElseIf Lat <= z15_lat And Lng <= z15_long Then
            ThisWorkbook.Worksheets(2).Range("H" & buffer).Value = Lat
            ThisWorkbook.Worksheets(2).Range("A" & buffer).Value = ThisWorkbook.Worksheets(1).Range("A" & k)
            ThisWorkbook.Worksheets(2).Range("B" & buffer).Value = ThisWorkbook.Worksheets(1).Range("E" & k)
            ThisWorkbook.Worksheets(2).Range("C" & buffer).Value = ThisWorkbook.Worksheets(1).Range("F" & k)
            ThisWorkbook.Worksheets(2).Range("D" & buffer).Value = ThisWorkbook.Worksheets(1).Range("G" & k)
            ThisWorkbook.Worksheets(2).Range("E" & buffer).Value = ThisWorkbook.Worksheets(1).Range("H" & k)
            ThisWorkbook.Worksheets(2).Range("F" & buffer).Value = ThisWorkbook.Worksheets(1).Range("I" & k)
            ThisWorkbook.Worksheets(2).Range("G" & buffer).Value = ThisWorkbook.Worksheets(1).Range("J" & k)
            ThisWorkbook.Worksheets(2).Range("I" & buffer).Value = ThisWorkbook.Worksheets(1).Range("L" & k)
            ThisWorkbook.Worksheets(2).Range("J" & buffer).Value = 15
            buffer = buffer + 1

        ElseIf Lat <= z14_lat And Lng <= z14_long Then
            ThisWorkbook.Worksheets(2).Range("H" & buffer).Value = Lat
            ThisWorkbook.Worksheets(2).Range("A" & buffer).Value = ThisWorkbook.Worksheets(1).Range("A" & k)
            ThisWorkbook.Worksheets(2).Range("B" & buffer).Value = ThisWorkbook.Worksheets(1).Range("E" & k)
            ThisWorkbook.Worksheets(2).Range("C" & buffer).Value = ThisWorkbook.Worksheets(1).Range("F" & k)
            ThisWorkbook.Worksheets(2).Range("D" & buffer).Value = ThisWorkbook.Worksheets(1).Range("G" & k)
            ThisWorkbook.Worksheets(2).Range("E" & buffer).Value = ThisWorkbook.Worksheets(1).Range("H" & k)
            ThisWorkbook.Worksheets(2).Range("F" & buffer).Value = ThisWorkbook.Worksheets(1).Range("I" & k)
            ThisWorkbook.Worksheets(2).Range("G" & buffer).Value = ThisWorkbook.Worksheets(1).Range("J" & k)
            ThisWorkbook.Worksheets(2).Range("I" & buffer).Value = ThisWorkbook.Worksheets(1).Range("L" & k)
            ThisWorkbook.Worksheets(2).Range("J" & buffer).Value = 14
            buffer = buffer + 1

        ElseIf Lat <= z13_lat And Lng <= z13_long Then
            ThisWorkbook.Worksheets(2).Range("H" & buffer).Value = Lat
            ThisWorkbook.Worksheets(2).Range("A" & buffer).Value = ThisWorkbook.Worksheets(1).Range("A" & k)
            ThisWorkbook.Worksheets(2).Range("B" & buffer).Value = ThisWorkbook.Worksheets(1).Range("E" & k)
            ThisWorkbook.Worksheets(2).Range("C" & buffer).Value = ThisWorkbook.Worksheets(1).Range("F" & k)
            ThisWorkbook.Worksheets(2).Range("D" & buffer).Value = ThisWorkbook.Worksheets(1).Range("G" & k)
            ThisWorkbook.Worksheets(2).Range("E" & buffer).Value = ThisWorkbook.Worksheets(1).Range("H" & k)
            ThisWorkbook.Worksheets(2).Range("F" & buffer).Value = ThisWorkbook.Worksheets(1).Range("I" & k)
            ThisWorkbook.Worksheets(2).Range("G" & buffer).Value = ThisWorkbook.Worksheets(1).Range("J" & k)
            ThisWorkbook.Worksheets(2).Range("I" & buffer).Value = ThisWorkbook.Worksheets(1).Range("L" & k)
            ThisWorkbook.Worksheets(2).Range("J" & buffer).Value = 13
            buffer = buffer + 1

        ElseIf Lat <= z12_lat And Lng <= z12_long Then
            ThisWorkbook.Worksheets(2).Range("H" & buffer).Value = Lat
            ThisWorkbook.Worksheets(2).Range("A" & buffer).Value = ThisWorkbook.Worksheets(1).Range("A" & k)
            ThisWorkbook.Worksheets(2).Range("B" & buffer).Value = ThisWorkbook.Worksheets(1).Range("E" & k)
            ThisWorkbook.Worksheets(2).Range("C" & buffer).Value = ThisWorkbook.Worksheets(1).Range("F" & k)
            ThisWorkbook.Worksheets(2).Range("D" & buffer).Value = ThisWorkbook.Worksheets(1).Range("G" & k)
            ThisWorkbook.Worksheets(2).Range("E" & buffer).Value = ThisWorkbook.Worksheets(1).Range("H" & k)
            ThisWorkbook.Worksheets(2).Range("F" & buffer).Value = ThisWorkbook.Worksheets(1).Range("I" & k)
            ThisWorkbook.Worksheets(2).Range("G" & buffer).Value = ThisWorkbook.Worksheets(1).Range("J" & k)
            ThisWorkbook.Worksheets(2).Range("I" & buffer).Value = ThisWorkbook.Worksheets(1).Range("L" & k)
            ThisWorkbook.Worksheets(2).Range("J" & buffer).Value = 12
            buffer = buffer + 1

        ElseIf Lat <= z11_lat And Lng <= z11_long Then
            ThisWorkbook.Worksheets(2).Range("H" & buffer).Value = Lat
            ThisWorkbook.Worksheets(2).Range("A" & buffer).Value = ThisWorkbook.Worksheets(1).Range("A" & k)
            ThisWorkbook.Worksheets(2).Range("B" & buffer).Value = ThisWorkbook.Worksheets(1).Range("E" & k)
            ThisWorkbook.Worksheets(2).Range("C" & buffer).Value = ThisWorkbook.Worksheets(1).Range("F" & k)
            ThisWorkbook.Worksheets(2).Range("D" & buffer).Value = ThisWorkbook.Worksheets(1).Range("G" & k)
            ThisWorkbook.Worksheets(2).Range("E" & buffer).Value = ThisWorkbook.Worksheets(1).Range("H" & k)
            ThisWorkbook.Worksheets(2).Range("F" & buffer).Value = ThisWorkbook.Worksheets(1).Range("I" & k)
            ThisWorkbook.Worksheets(2).Range("G" & buffer).Value = ThisWorkbook.Worksheets(1).Range("J" & k)
            ThisWorkbook.Worksheets(2).Range("I" & buffer).Value = ThisWorkbook.Worksheets(1).Range("L" & k)
            ThisWorkbook.Worksheets(2).Range("J" & buffer).Value = 11
            buffer = buffer + 1

        ElseIf Lat <= z10_lat And Lng <= z10_long Then
            ThisWorkbook.Worksheets(2).Range("H" & buffer).Value = Lat
            ThisWorkbook.Worksheets(2).Range("A" & buffer).Value = ThisWorkbook.Worksheets(1).Range("A" & k)
            ThisWorkbook.Worksheets(2).Range("B" & buffer).Value = ThisWorkbook.Worksheets(1).Range("E" & k)
            ThisWorkbook.Worksheets(2).Range("C" & buffer).Value = ThisWorkbook.Worksheets(1).Range("F" & k)
            ThisWorkbook.Worksheets(2).Range("D" & buffer).Value = ThisWorkbook.Worksheets(1).Range("G" & k)
            ThisWorkbook.Worksheets(2).Range("E" & buffer).Value = ThisWorkbook.Worksheets(1).Range("H" & k)
            ThisWorkbook.Worksheets(2).Range("F" & buffer).Value = ThisWorkbook.Worksheets(1).Range("I" & k)
            ThisWorkbook.Worksheets(2).Range("G" & buffer).Value = ThisWorkbook.Worksheets(1).Range("J" & k)
            ThisWorkbook.Worksheets(2).Range("I" & buffer).Value = ThisWorkbook.Worksheets(1).Range("L" & k)
            ThisWorkbook.Worksheets(2).Range("J" & buffer).Value = 10
            buffer = buffer + 1

        ElseIf Lat <= z9_lat And Lng <= z9_long Then
            ThisWorkbook.Worksheets(2).Range("H" & buffer).Value = Lat
            ThisWorkbook.Worksheets(2).Range("A" & buffer).Value = ThisWorkbook.Worksheets(1).Range("A" & k)
            ThisWorkbook.Worksheets(2).Range("B" & buffer).Value = ThisWorkbook.Worksheets(1).Range("E" & k)
            ThisWorkbook.Worksheets(2).Range("C" & buffer).Value = ThisWorkbook.Worksheets(1).Range("F" & k)
            ThisWorkbook.Worksheets(2).Range("D" & buffer).Value = ThisWorkbook.Worksheets(1).Range("G" & k)
            ThisWorkbook.Worksheets(2).Range("E" & buffer).Value = ThisWorkbook.Worksheets(1).Range("H" & k)
            ThisWorkbook.Worksheets(2).Range("F" & buffer).Value = ThisWorkbook.Worksheets(1).Range("I" & k)
            ThisWorkbook.Worksheets(2).Range("G" & buffer).Value = ThisWorkbook.Worksheets(1).Range("J" & k)
            ThisWorkbook.Worksheets(2).Range("I" & buffer).Value = ThisWorkbook.Worksheets(1).Range("L" & k)
            ThisWorkbook.Worksheets(2).Range("J" & buffer).Value = 9
            buffer = buffer + 1

        ElseIf Lat <= z8_lat And Lng <= z8_long Then
            ThisWorkbook.Worksheets(2).Range("H" & buffer).Value = Lat
            ThisWorkbook.Worksheets(2).Range("A" & buffer).Value = ThisWorkbook.Worksheets(1).Range("A" & k)
            ThisWorkbook.Worksheets(2).Range("B" & buffer).Value = ThisWorkbook.Worksheets(1).Range("E" & k)
            ThisWorkbook.Worksheets(2).Range("C" & buffer).Value = ThisWorkbook.Worksheets(1).Range("F" & k)
            ThisWorkbook.Worksheets(2).Range("D" & buffer).Value = ThisWorkbook.Worksheets(1).Range("G" & k)
            ThisWorkbook.Worksheets(2).Range("E" & buffer).Value = ThisWorkbook.Worksheets(1).Range("H" & k)
            ThisWorkbook.Worksheets(2).Range("F" & buffer).Value = ThisWorkbook.Worksheets(1).Range("I" & k)
            ThisWorkbook.Worksheets(2).Range("G" & buffer).Value = ThisWorkbook.Worksheets(1).Range("J" & k)
            ThisWorkbook.Worksheets(2).Range("I" & buffer).Value = ThisWorkbook.Worksheets(1).Range("L" & k)
            ThisWorkbook.Worksheets(2).Range("J" & buffer).Value = 8
            buffer = buffer + 1

        ElseIf Lat <= z7_lat And Lng <= z7_long Then
            ThisWorkbook.Worksheets(2).Range("H" & buffer).Value = Lat
            ThisWorkbook.Worksheets(2).Range("A" & buffer).Value = ThisWorkbook.Worksheets(1).Range("A" & k)
            ThisWorkbook.Worksheets(2).Range("B" & buffer).Value = ThisWorkbook.Worksheets(1).Range("E" & k)
            ThisWorkbook.Worksheets(2).Range("C" & buffer).Value = ThisWorkbook.Worksheets(1).Range("F" & k)
            ThisWorkbook.Worksheets(2).Range("D" & buffer).Value = ThisWorkbook.Worksheets(1).Range("G" & k)
            ThisWorkbook.Worksheets(2).Range("E" & buffer).Value = ThisWorkbook.Worksheets(1).Range("H" & k)
            ThisWorkbook.Worksheets(2).Range("F" & buffer).Value = ThisWorkbook.Worksheets(1).Range("I" & k)
            ThisWorkbook.Worksheets(2).Range("G" & buffer).Value = ThisWorkbook.Worksheets(1).Range("J" & k)
            ThisWorkbook.Worksheets(2).Range("I" & buffer).Value = ThisWorkbook.Worksheets(1).Range("L" & k)
            ThisWorkbook.Worksheets(2).Range("J" & buffer).Value = 7
            buffer = buffer + 1


        ElseIf Lat <= z6_lat And Lng <= z6_long Then
            ThisWorkbook.Worksheets(2).Range("H" & buffer).Value = Lat
            ThisWorkbook.Worksheets(2).Range("A" & buffer).Value = ThisWorkbook.Worksheets(1).Range("A" & k)
            ThisWorkbook.Worksheets(2).Range("B" & buffer).Value = ThisWorkbook.Worksheets(1).Range("E" & k)
            ThisWorkbook.Worksheets(2).Range("C" & buffer).Value = ThisWorkbook.Worksheets(1).Range("F" & k)
            ThisWorkbook.Worksheets(2).Range("D" & buffer).Value = ThisWorkbook.Worksheets(1).Range("G" & k)
            ThisWorkbook.Worksheets(2).Range("E" & buffer).Value = ThisWorkbook.Worksheets(1).Range("H" & k)
            ThisWorkbook.Worksheets(2).Range("F" & buffer).Value = ThisWorkbook.Worksheets(1).Range("I" & k)
            ThisWorkbook.Worksheets(2).Range("G" & buffer).Value = ThisWorkbook.Worksheets(1).Range("J" & k)
            ThisWorkbook.Worksheets(2).Range("I" & buffer).Value = ThisWorkbook.Worksheets(1).Range("L" & k)
            ThisWorkbook.Worksheets(2).Range("J" & buffer).Value = 6
            buffer = buffer + 1

            End If
        Next k
End Sub

Sub dimensions()
    Dim delta_lat, delta_long As Range
    Dim counter As Variant
    Dim z19_lat, z19_long, z18_lat, z_18long, z17_lat, z17_long, z16_lat, z16_long, z15_lat, z15_long, z14_lat, z14_long, z13_lat, z13_long, z12_lat, z12_long, z11_lat, z11_long, z10_lat, z10_long, z9_lat, z9_long, z8_lat, z8_long, z7_lat, z7_long, z6_lat, z6_long, Lat, Lng As Double
    z19_lat = 0.00115
    z18_lat = 0.0023
    z17_lat = 0.0046
    z16_lat = 0.0092
    z15_lat = 0.0184
    z14_lat = 0.0368
    z13_lat = 0.0736
    z12_lat = 0.1472
    z11_lat = 0.2944
    z10_lat = 0.5888
    z9_lat = 1.1776
    z8_lat = 2.3552
    z7_lat = 4.7104
    z6_lat = 9.4208
    z19_long = 0.00178
    z18_long = 0.00356
    z17_long = 0.00712
    z16_long = 0.01424
    z15_long = 0.02848
    z14_long = 0.05696
    z13_long = 0.11392
    z12_long = 0.22784
    z11_long = 0.45568
    z10_long = 0.91136
    z9_long = 1.82272
    z8_long = 3.64544
    z7_long = 7.29088
    z6_long = 14.58176

    For counter = 2 To 100000
        If ThisWorkbook.Worksheets(2).Range("J" & counter).Value = 19 Then

            ThisWorkbook.Worksheets(2).Range("K" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("H" & counter).Value) / z19_lat) * 640)
            ThisWorkbook.Worksheets(2).Range("L" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("I" & counter).Value) / z19_long) * 640)

        ElseIf ThisWorkbook.Worksheets(2).Range("J" & counter).Value = 18 Then

            ThisWorkbook.Worksheets(2).Range("K" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("H" & counter).Value) / z18_lat) * 640)
            ThisWorkbook.Worksheets(2).Range("L" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("I" & counter).Value) / z18_long) * 640)

        ElseIf ThisWorkbook.Worksheets(2).Range("J" & counter).Value = 17 Then

            ThisWorkbook.Worksheets(2).Range("K" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("H" & counter).Value) / z17_lat) * 640)
            ThisWorkbook.Worksheets(2).Range("L" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("I" & counter).Value) / z17_long) * 640)

        ElseIf ThisWorkbook.Worksheets(2).Range("J" & counter).Value = 16 Then

            ThisWorkbook.Worksheets(2).Range("K" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("H" & counter).Value) / z16_lat) * 640)
            ThisWorkbook.Worksheets(2).Range("L" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("I" & counter).Value) / z16_long) * 640)

        ElseIf ThisWorkbook.Worksheets(2).Range("J" & counter).Value = 15 Then

            ThisWorkbook.Worksheets(2).Range("K" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("H" & counter).Value) / z15_lat) * 640)
            ThisWorkbook.Worksheets(2).Range("L" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("I" & counter).Value) / z15_long) * 640)

        ElseIf ThisWorkbook.Worksheets(2).Range("J" & counter).Value = 14 Then

            ThisWorkbook.Worksheets(2).Range("K" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("H" & counter).Value) / z14_lat) * 640)
            ThisWorkbook.Worksheets(2).Range("L" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("I" & counter).Value) / z14_long) * 640)

        ElseIf ThisWorkbook.Worksheets(2).Range("J" & counter).Value = 13 Then

            ThisWorkbook.Worksheets(2).Range("K" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("H" & counter).Value) / z13_lat) * 640)
            ThisWorkbook.Worksheets(2).Range("L" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("I" & counter).Value) / z13_long) * 640)

        ElseIf ThisWorkbook.Worksheets(2).Range("J" & counter).Value = 12 Then

            ThisWorkbook.Worksheets(2).Range("K" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("H" & counter).Value) / z12_lat) * 640)
            ThisWorkbook.Worksheets(2).Range("L" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("I" & counter).Value) / z12_long) * 640)

        ElseIf ThisWorkbook.Worksheets(2).Range("J" & counter).Value = 11 Then

            ThisWorkbook.Worksheets(2).Range("K" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("H" & counter).Value) / z11_lat) * 640)
            ThisWorkbook.Worksheets(2).Range("L" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("I" & counter).Value) / z11_long) * 640)

        ElseIf ThisWorkbook.Worksheets(2).Range("J" & counter).Value = 10 Then

            ThisWorkbook.Worksheets(2).Range("K" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("H" & counter).Value) / z10_lat) * 640)
            ThisWorkbook.Worksheets(2).Range("L" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("I" & counter).Value) / z10_long) * 640)

        ElseIf ThisWorkbook.Worksheets(2).Range("J" & counter).Value = 9 Then

            ThisWorkbook.Worksheets(2).Range("K" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("H" & counter).Value) / z9_lat) * 640)
            ThisWorkbook.Worksheets(2).Range("L" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("I" & counter).Value) / z9_long) * 640)

        ElseIf ThisWorkbook.Worksheets(2).Range("J" & counter).Value = 8 Then

            ThisWorkbook.Worksheets(2).Range("K" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("H" & counter).Value) / z8_lat) * 640)
            ThisWorkbook.Worksheets(2).Range("L" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("I" & counter).Value) / z8_long) * 640)

        ElseIf ThisWorkbook.Worksheets(2).Range("J" & counter).Value = 7 Then

            ThisWorkbook.Worksheets(2).Range("K" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("H" & counter).Value) / z7_lat) * 640)
            ThisWorkbook.Worksheets(2).Range("L" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("I" & counter).Value) / z7_long) * 640)

        ElseIf ThisWorkbook.Worksheets(2).Range("J" & counter).Value = 6 Then

            ThisWorkbook.Worksheets(2).Range("K" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("H" & counter).Value) / z6_lat) * 640)
            ThisWorkbook.Worksheets(2).Range("L" & counter).Value = Round(((ThisWorkbook.Worksheets(2).Range("I" & counter).Value) / z6_long) * 640)
       End If
    Next counter
End Sub
