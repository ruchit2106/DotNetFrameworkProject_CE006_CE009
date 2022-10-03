<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_panel.aspx.cs" Inherits="Online_Voting_System.Admin_panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            
        }
        .auto-style2 {
           
        }
        .header{
            font-size:28px;
            color :  white;
            margin-right: 400px;
        }
       #Approved_user
       {
          
           margin-right:15px;
       }
       #add_candidate
       {
           margin-right:15px;
       }

       #add_result
       {
           margin-right:250px;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-dark bg-dark">
            <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <div class="header">Admin Panel</div></td>
                <td>
                    

                    <asp:Button class="btn btn-primary" ID="Approved_user" runat="server" OnClick="Approved_user_Click" Text="Approve User" />

                    <asp:Button class="btn btn-primary" ID="add_candidate" runat="server" OnClick="add_candidate_Click" Text="Add Candidate" />

                    <asp:Button class="btn btn-primary" ID="add_result" runat="server" OnClick="add_result_Click" Text="Generate Result" />

                   <asp:Button class="btn btn-danger" ID="logout" runat="server" OnClick="logout_click" Text ="Logout" /> 
 </td>
            </tr>
           
        </table>
        </nav>
        
    </form>
</body>
</html>
