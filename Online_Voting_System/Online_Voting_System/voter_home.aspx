<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="voter_home.aspx.cs" Inherits="Online_Voting_System.voter_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 318px;
        }
        .auto-style3 {
            margin-left: 158px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            width: 486px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style2">Hello
                    <asp:Label ID="print_email" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Edit_Profile" runat="server" OnClick="Edit_Profile_Click" Text="Edit Profile" />
                    <asp:Button ID="assigned_vote" runat="server" CssClass="auto-style3" OnClick="assigned_vote_Click" Text="Vote" />
                </td>
                <td>
                    <asp:Button ID="logout_button" runat="server" CssClass="auto-style4" OnClick="logout_button_Click" Text="Logout" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
