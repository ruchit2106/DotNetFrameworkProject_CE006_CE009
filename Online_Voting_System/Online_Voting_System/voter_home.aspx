<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="voter_home.aspx.cs" Inherits="Online_Voting_System.voter_home" %>

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
        .auto-style3 {
            
        }
        .auto-style4 {
           
        }
        .auto-style5 {
           
        }

         .header{
            font-size:25px;
            color :  white;
            margin-top:2px;
            margin-bottom:2px;
            margin-right: 400px;
          
        }

         #Edit_Profile
       {
          
           margin-right:15px;
       }
       #assigned_vote
       {
           margin-right:500px;
       }

       #logout_button
       {
          
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-dark bg-dark">
            <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label class="header" ID="print_email" runat="server"> </asp:Label>

                                           

                   </td>
                <td>


                    <asp:Button class="btn btn-primary" ID="Edit_Profile" runat="server" OnClick="Edit_Profile_Click" Text="Edit Profile" />

                   <asp:Button class="btn btn-primary" ID="assigned_vote" runat="server"  OnClick="assigned_vote_Click" Text="Vote" />

                    <asp:Button class="btn btn-danger" ID="logout_button" runat="server"  OnClick="logout_button_Click" Text="Logout" />
                

                </td>
            </tr>
           
        </table>
        </nav>
        
        &nbsp;<table class="auto-style1">
           
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
