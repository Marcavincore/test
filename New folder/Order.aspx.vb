Imports System.Data.OleDb
Imports System.Data

Partial Class Info
    Inherits System.Web.UI.Page


    Protected Sub btnNewEntry_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Sendbtn.Click
        Try
            Dim sqlconn As New OleDb.OleDbConnection
            Dim sqlquery As New OleDb.OleDbCommand
            Dim connString As String
            connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\Owner\Desktop\Sp\New folder\Data\Info.accdb"
            sqlconn.ConnectionString = connString
            sqlquery.Connection = sqlconn
            sqlconn.Open()
            sqlquery.CommandText = "INSERT INTO Info(Name, Address, Phone, Email)VALUES(@Name, @Adress, @Phone, @Email)"
            sqlquery.Parameters.AddWithValue("@Name", Nametxtbox.Text)
            sqlquery.Parameters.AddWithValue("@Adress", Addtxtbox.Text)
            sqlquery.Parameters.AddWithValue("@Phone", Phonetxtbox.Text)
            sqlquery.Parameters.AddWithValue("@Email", Emailtxtbox.Text)
            sqlquery.ExecuteNonQuery()
            sqlconn.Close()
            Server.Transfer("~/Confirm.aspx")
        Catch ex As Exception
        End Try

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

End Class
