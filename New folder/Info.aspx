<%@ Page Title="Order Info" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeFile="Info.aspx.vb" Inherits="Info"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <p>
        Information:<asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                 
            </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" MaxLength="30" Width="293px"></asp:TextBox>
         <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="LowercaseLetters, UppercaseLetters"
            TargetControlID="TextBox1" />
            <asp:RequiredFieldValidator RequiredFieldValidatorID="user" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required Field" 
                    ForeColor="Red" ID="RequiredFieldValidator1"></asp:RequiredFieldValidator>
            </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" MaxLength="50" Width="293px" ></asp:TextBox>
                <asp:RequiredFieldValidator RequiredFieldValidatorID="user" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Required Field" 
                    ForeColor="Red" ID="RequiredFieldValidator2"></asp:RequiredFieldValidator>
            </p>
            <p>
        <asp:Label ID="Label3" runat="server" Text="Phone/Mobile"></asp:Label>
                &nbsp;
        <asp:TextBox ID="TextBox3" runat="server" MaxLength="50" Width="293px"></asp:TextBox>
        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers"
            TargetControlID="TextBox3" />
                 <asp:RequiredFieldValidator RequiredFieldValidatorID="user" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Required Field" 
                    ForeColor="Red" ID="RequiredFieldValidator3"></asp:RequiredFieldValidator>
                 
            </p>

        <p>
        <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
&nbsp;<asp:RequiredFieldValidator RequiredFieldValidatorID="user" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*" 
                    ForeColor="Red" ID="RequiredFieldValidator4"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" MaxLength="50" Width="293px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="regexEmailValid" 
        ControlToValidate="TextBox4" runat="server"
         ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
          ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Nextbtn" runat="server" Text="Next" OnClick="btnNewEntry_Click" 
            BackColor="#546E96" />
    </p>

</asp:Content>

