using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Voting_System
{
    public partial class Approved_user : System.Web.UI.Page
    {
       // SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\admin\Documents\GitHub\Online_Voting_System\Online_Voting_System\Online_Voting_System\App_Data\OnlineVotingSystem.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            String approved_voter = "SELECT * FROM PENDING_VOTERS WHERE IsApproved = @IsApproved";
           
        }

       
    }
}