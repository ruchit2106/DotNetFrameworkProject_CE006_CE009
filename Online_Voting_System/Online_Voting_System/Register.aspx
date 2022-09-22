<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Voting_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        #Submit_Login {
            margin-left: 150px;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            height: 29px;
            width: 264px;
        }
        .auto-style4 {
            width: 264px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            REGISTER
        </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="fullnameid" runat="server" Text="Full Name"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="fullnametxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="emailid" runat="server" Text="Email ID"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="emailidtxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="passwordid" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <input id="passwordtxt" type="password" /></td>
                </tr>
                 <tr>
                    <td class="auto-style4">
                        <asp:Label ID="dobid" runat="server" Text="DOB"></asp:Label>
                    </td>
                    <td>
                        <input id="input_dobid" type="date" /></td>
                </tr>
                 <tr>
                    <td class="auto-style4">
                        <asp:Label ID="phoneid" runat="server" Text="Phone no."></asp:Label>
                    </td>
                    <td>
                        <input type="number" id="input_phoneid" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required="required"/></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="addressid" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td>
                        <textarea id="input_addressid" cols="20" name="S1" rows="2" required="required"></textarea></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="genderid" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem Enabled="False">Male</asp:ListItem>
                            <asp:ListItem Enabled="False">Female</asp:ListItem>
                        </asp:RadioButtonList>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Confirm_Register" runat="server" OnClick="Confirm_Register_Click" Text="Submit" />
                    </td>
                    <td><asp:Button ID="login_link" runat="server" Text="Login" Width="74px" />
                    </td>
                </tr>
            </table>
    </form>
</body>
</html>