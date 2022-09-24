<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_panel.aspx.cs" Inherits="Online_Voting_System.Admin_panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 240px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Admin Panel</td>
                <td>
                    <asp:HyperLink ID="home_url" runat="server" NavigateUrl="~/Login.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;
                    <asp:Button ID="Approved_user" runat="server" OnClick="Approved_user_Click" Text="Approve User" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="add_candidate" runat="server" OnClick="add_candidate_Click" Text="Add Candidate" />
&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
