<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="select_candidate.aspx.cs" Inherits="Online_Voting_System.select_candidate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            margin-left: 353px;
        }
        .auto-style3 {
            margin-left: 37px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style2" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="FullName" HeaderText="Candidate Name" SortExpression="FullName" />
                    <asp:BoundField DataField="PartyName" HeaderText="Party Name" SortExpression="PartyName" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT [FullName], [PartyName] FROM [CANDIDATES]"></asp:SqlDataSource>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;Candidate Name&nbsp;
                        <asp:TextBox ID="candidatename_txt" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Party Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="partyname_txt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="vote" runat="server" OnClick="vote_Click" Text="Vote" Width="63px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
