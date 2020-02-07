<%@ Page Title="Order Info" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeFile="Order.aspx.vb" Inherits="Info" validateRequest="false" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="diy-f-spot  " 
        style="color: rgb(0, 0, 0); font-family: Questrial, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; padding: 20px; background-color: rgb(237, 151, 40); background-repeat: repeat;">
        
    <p>
        Information:<asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                 
            </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            &nbsp;&nbsp;<asp:TextBox ID="Nametxtbox" runat="server" MaxLength="30" Width="250px" 
            style="margin-left: 3px"></asp:TextBox>
         <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="Custom, LowercaseLetters, UppercaseLetters" 
         FilterMode="ValidChars" ValidChars=" "
            TargetControlID="Nametxtbox" />
            &nbsp;<asp:RequiredFieldValidator RequiredFieldValidatorID="user" runat="server" 
                    ControlToValidate="Nametxtbox" ErrorMessage="Required Field" 
                    ForeColor="Red" ID="RequiredFieldValidator1"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="Addtxtbox" runat="server" MaxLength="50" 
            Width="240px" Height="22px" ></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator RequiredFieldValidatorID="user" runat="server" 
                    ControlToValidate="Addtxtbox" ErrorMessage="Required Field" 
                    ForeColor="Red" ID="RequiredFieldValidator2"></asp:RequiredFieldValidator>
            </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Phone/Mobile"></asp:Label>
                &nbsp;&nbsp;<asp:TextBox ID="Phonetxtbox" runat="server" MaxLength="12" 
            Width="198px" Height="22px"></asp:TextBox>
        &nbsp;<cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers"
            TargetControlID="Phonetxtbox" />
                 <asp:RequiredFieldValidator RequiredFieldValidatorID="user" runat="server" 
                    ControlToValidate="Phonetxtbox" ErrorMessage="Required Field" 
                    ForeColor="Red" ID="RequiredFieldValidator3"></asp:RequiredFieldValidator>
                 
            &nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
        <asp:RequiredFieldValidator RequiredFieldValidatorID="user" runat="server" 
                    ControlToValidate="Emailtxtbox" ErrorMessage="*" 
                    ForeColor="Red" ID="RequiredFieldValidator4"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Emailtxtbox" runat="server" MaxLength="50" Width="231px" 
            Height="22px" style="margin-left: 2px"></asp:TextBox>
        &nbsp;<asp:RegularExpressionValidator ID="regexEmailValid" 
        ControlToValidate="Emailtxtbox" runat="server"
         ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
          ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Type"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Wall to Wall Carpets</asp:ListItem>
                <asp:ListItem>Area Rugs</asp:ListItem>
                <asp:ListItem>Accent Carpets</asp:ListItem>
                <asp:ListItem>Tile Carpets</asp:ListItem>
                <asp:ListItem>Printed Carpets</asp:ListItem>
                <asp:ListItem>Axminster woven carpet</asp:ListItem>
            </asp:DropDownList>
            </p>
    <p>
        <asp:Label ID="Label6" runat="server" Text="Select Carpet Design"></asp:Label>
            </p>
    <asp:Panel ID="Panel1" VerticalAlign="Center" runat="server" Height="236px" 
        BorderStyle="Outset" Width="635px">
        <asp:CheckBoxList ID="x" runat="server" Height="210px" Width="665px" 
            RepeatColumns="3" RepeatDirection="Horizontal" ClientIDMode="Static" 
            style="margin-right: 0px">
  <asp:ListItem Text="Atlantic Blue: <img src='Images/product/Atlantic Blue.jpg' />"></asp:ListItem>
  <asp:ListItem Text="Bronze Green:&nbsp  <img src='Images/product/Bronze Green.jpg' />"></asp:ListItem>
  <asp:ListItem Text="Dapple Grey:   <img src='Images/product/Dapple Grey.jpg' />"></asp:ListItem>
  <asp:ListItem Text="Gull Grey:&nbsp;&nbsp&nbsp;&nbsp     <img src='Images/product/Gull Grey.jpg' />"></asp:ListItem>
  <asp:ListItem Text="Malted Milk:&nbsp;&nbsp;&nbsp;&nbsp <img src='Images/product/Malted Milk.jpg' />"></asp:ListItem>
  <asp:ListItem Text="Shark Grey:&nbsp;&nbsp    <img src='Images/product/Shark Grey.jpg' />"></asp:ListItem>
  <asp:ListItem Text="Storm Blue:&nbsp    <img src='Images/product/Storm Blue.jpg' />"></asp:ListItem>
  <asp:ListItem Text="Tawny Brown:&nbsp;&nbsp   <img src='Images/product/Tawny Brown.jpg' />"></asp:ListItem>
  <asp:ListItem Text="Tea Berry:&nbsp;&nbsp;&nbsp;&nbsp     <img src='Images/product/Tea Berry.jpg' />"></asp:ListItem>
</asp:CheckBoxList>

    </asp:Panel>

    <p>
        <asp:Button ID="Sendbtn" runat="server" Text="Send" OnClick="btnNewEntry_Click" 
            BackColor="#546E96" Width="84px"  />
    </p>
</div>
</asp:Content>

