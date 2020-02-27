Imports System.Data.OleDb
Imports System.Data
Imports System.IO
Imports System.Net
Imports System.Net.Mail

Partial Class Info
    Inherits System.Web.UI.Page


    Protected Sub btnNewEntry_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Sendbtn.Click
        Try
            Dim sqlconn As New OleDb.OleDbConnection
            Dim sqlquery As New OleDb.OleDbCommand
            Dim connString As String
            connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\marcavin\Desktop\Sp\New folder\Data\Info.accdb"
            sqlconn.ConnectionString = connString
            sqlquery.Connection = sqlconn
            sqlconn.Open()
            sqlquery.CommandText = "INSERT INTO Info(Name, Address, Phone, Email, Type)VALUES(@Name, @Adress, @Phone, @Email, @Type)"
            sqlquery.Parameters.AddWithValue("@Name", Nametxtbox.Text)
            sqlquery.Parameters.AddWithValue("@Adress", Addtxtbox.Text)
            sqlquery.Parameters.AddWithValue("@Phone", Phonetxtbox.Text)
            sqlquery.Parameters.AddWithValue("@Email", Emailtxtbox.Text)
            sqlquery.Parameters.AddWithValue("@Type", DropDownList1.Text)
            sqlquery.ExecuteNonQuery()
            sqlconn.Close()

            Using mm As New MailMessage("marcavin23.mcl@gmail.com", "07lastone23@gmail.com")
                mm.Subject = "Order Request"
                mm.Body = "Name: " + Nametxtbox.Text + vbCrLf + "Address: " + Addtxtbox.Text + vbCrLf + "Contact Number: " + Phonetxtbox.Text + vbCrLf + "Email: " + Emailtxtbox.Text + vbCrLf + "Type: " + DropDownList1.Text + vbCrLf + "Design: " + x.SelectedItem.Value
                mm.IsBodyHtml = False
                Dim smtp As New SmtpClient()
                smtp.Host = "smtp.gmail.com"
                smtp.EnableSsl = True
                Dim NetworkCred As New NetworkCredential("marcavin23.mcl@gmail.com", "posthardcore")
                smtp.UseDefaultCredentials = True
                smtp.Credentials = NetworkCred
                smtp.Port = 587
                smtp.Send(mm)
                ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Email sent.');", True)
            End Using

            Server.Transfer("~/Confirm.aspx")
        Catch ex As Exception
        End Try


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

End Class
