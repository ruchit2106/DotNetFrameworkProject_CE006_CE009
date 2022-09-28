<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Voter_Profile.aspx.cs" Inherits="Online_Voting_System.Edit_Voter_Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 163px;
        }
        .auto-style2 {
            width: 262px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            margin-left: 206px;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            margin-left: 70px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="emailid_txt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="password_txt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Date of Birth</td>
                <td>
                    <asp:TextBox ID="dob_txt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Phone Number</td>
                <td>
                    <asp:TextBox ID="phoneno_txt" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Address</td>
                <td>
                    <asp:TextBox ID="address_txt" runat="server" Height="18px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Name</td>
                <td>
                    <asp:TextBox ID="Name_txt" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <div class="auto-style3">
            <asp:Button ID="back_home" runat="server" CssClass="auto-style6" OnClick="back_home_Click" Text="Back" />
            <asp:Button ID="update_btn" runat="server" CssClass="auto-style4" OnClick="update_btn_Click" Text="Update" />
            <br />
            <br />
            <table class="auto-style5">
                <tr>
                    <td>
                        <asp:Label ID="Successful_msg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
