Imports System.IO
Imports AjaxControlToolkit
Imports System.Web.Services
Imports System.Web.Script.Services
Imports System.Collections.Generic
Partial Class _Default
    Inherits System.Web.UI.Page

    <WebMethod()> _
    <ScriptMethod()> _
    Public Shared Function GetImages() As Slide()
        Dim slides As New List(Of Slide)()
        Dim sPath As String = HttpContext.Current.Server.MapPath("~/images/")
        If sPath.EndsWith("\") Then
            sPath = sPath.Remove(sPath.Length - 1)
        End If
        Dim pathUri As New Uri(sPath, UriKind.Absolute)
        Dim files As String() = Directory.GetFiles(sPath)
        For Each file As String In files
            Dim filePathUri As New Uri(file, UriKind.Absolute)
            slides.Add(New Slide() With { _
              .Name = Path.GetFileNameWithoutExtension(file), _
              .Description = Path.GetFileNameWithoutExtension(file) + " Description.", _
              .ImagePath = pathUri.MakeRelativeUri(filePathUri).ToString() _
            })
        Next
        Return slides.ToArray()
    End Function


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
