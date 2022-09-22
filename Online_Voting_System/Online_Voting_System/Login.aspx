<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Voting_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 323px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Login"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="emailid" runat="server" Text="Email ID"></asp:Label>
                    </td>
                    <td>
                        <input id="input_emailid" type="text" required="required" /></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="password" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <input id="Input_Password" type="password" required="required" /></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Submitbtn" runat="server" OnClick="Submitbtn_Click" Text="Submit" />
                    </td>
                    <td>
                        <asp:HyperLink ID="Registerlink" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
