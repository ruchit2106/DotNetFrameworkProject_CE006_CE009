﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Approved_user.aspx.cs" Inherits="Online_Voting_System.Approved_user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" DataSourceID="SqlDataSource2" AutoGenerateDeleteButton="True" CellPadding="4" DataKeyNames="Email">
                        <Columns>
                            
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                            <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                            <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:CheckBoxField DataField="IsApproved" HeaderText="IsApproved" SortExpression="IsApproved" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" 
                        SelectCommand="SELECT * FROM [PENDING_VOTERS]"
                        DeleteCommand ="DELETE  FROM [PENDING_VOTERS] WHERE [Email] = @Email"
                        UpdateCommand="UPDATE [PENDING_VOTERS] SET [IsApproved] =@IsApproved WHERE [Email] = @Email">
                        <DeleteParameters>
                            <asp:Parameter Name="Email" />
                        </DeleteParameters>
                    </asp:SqlDataSource>
                    <asp:Button ID="addvoters" runat="server" OnClick="addvoters_Click" Text="Confirm Approvement" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
