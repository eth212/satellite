Sub DataGetter()
    Dim a, b, i, Str, buffer1, buffer2, buffer3, buffer4, buffer5, buffer6 As String
    Dim lineS As Variant
    Dim NElengthRight, NElengthLeft, SWlengthRight, SWlengthLeft As Variant



    ' to make sure that the program continues to run on non ok statuses
    On Error Resume Next
    'Application.ScreenUpdating = False
    'might have to make this a comment

    With CreateObject("WinHttp.WinHttpRequest.5.1")
       ' a = CStr(ThisWorkbook.Worksheets(1).Range("a2"))

        Dim iRow As Long: iRow = ThisWorkbook.Worksheets(1).Range("a7938").End(xlUp).Row

        For j = 2 To 100000
            b = CStr(ThisWorkbook.Worksheets(1).Range("a" & j))
            Dim query As String
            query = "https://maps.googleapis.com/maps/api/geocode/json?components=postal_code:" & b & "&key=ENTER_API_KEY_HERE"
            .Open "GET", query, False
            .send
            lineS = Split(.responseText, vbLf)
            Dim length As Long
            length = UBound(lineS)
                For K = 0 To UBound(lineS)
                'k is 25 in tutorial
                    If Trim(lineS(K)) = """northeast"" : {" Then
                        Exit For
                    End If
                Next K
            NElengthRight = Len(Trim(lineS(K + 1))) - 8
            NElengthLeft = Len(Trim(lineS(K + 2))) - 8
            buffer1 = Right(Trim(lineS(K + 1)), NElengthRight)
            buffer2 = Left(buffer1, NElengthRight - 1)
            buffer3 = Right(Trim(lineS(K + 2)), NElengthLeft)
            ThisWorkbook.Worksheets(1).Range("e" & j) = buffer2
            ThisWorkbook.Worksheets(1).Range("f" & j) = buffer3

            SWlengthRight = Len(Trim(lineS(K + 5))) - 8
            SWlengthLeft = Len(Trim(lineS(K + 6))) - 8
            buffer4 = Right(Trim(lineS(K + 5)), SWlengthRight)
            buffer5 = Left(buffer4, SWlengthRight - 1)
            buffer6 = Right(Trim(lineS(K + 6)), SWlengthLeft)
            ThisWorkbook.Worksheets(1).Range("g" & j) = buffer5
            ThisWorkbook.Worksheets(1).Range("h" & j) = buffer6




            'Application.Wait (Now + TimeValue("0:00:01"))
        Next j

    End With
    'Application.ScreenUpdating = True


End Sub
