<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="generate_result.aspx.cs" Inherits="Online_Voting_System.generate_result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                <asp:BoundField DataField="PartyName" HeaderText="PartyName" SortExpression="PartyName" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Votes" HeaderText="Votes" SortExpression="Votes" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT [FullName], [PartyName], [Gender], [Votes] FROM [CANDIDATES] ORDER BY [Votes] DESC"></asp:SqlDataSource>
    </form>
</body>
</html>
