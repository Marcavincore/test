﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td>
            <asp:Button ID="btnPrevious" runat="server" Text="<<" Font-Size="20" />
        </td>
        <td>
            <asp:Image ID="Image1" runat="server" Height="300" Width="300" />
            <cc1:SlideShowExtender ID="SlideShowExtender" runat="server" TargetControlID="Image1"
                SlideShowServiceMethod="GetImages" ImageTitleLabelID="lblImageTitle" ImageDescriptionLabelID="lblImageDescription"
                AutoPlay="true" PlayInterval="1000" Loop="true" PlayButtonID="btnPlay" StopButtonText="Stop"
                PlayButtonText="Play" NextButtonID="btnNext" PreviousButtonID="btnPrevious">
            </cc1:SlideShowExtender>
        </td>
        <td>
            <asp:Button ID="btnNext" runat="server" Text=">>" Font-Size="20" />
        </td>
    </tr>
    <tr>
        <td colspan="3" align="center">
            <asp:Button ID="btnPlay" runat="server" Text="Play" Font-Size="20" />
        </td>
    </tr>
    <tr>
        <td colspan="3" align="center">
            <br />
            <b>Name:</b>
            <asp:Label ID="lblImageTitle" runat="server" Text="Label" /><br />
            <b>Description:</b>
            <asp:Label ID="lblImageDescription" runat="server" Text="Label" />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                DataSourceID="AccessDataSource1" DataTextField="Product" 
                DataValueField="Product">
            </asp:CheckBoxList>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/product.accdb" 
                SelectCommand="SELECT [Product], [Image] FROM [product]">
            </asp:AccessDataSource>
        </td>
    </tr>
</table>
    <br />
    </form>
</body>
</html>

