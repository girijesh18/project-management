using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        DataAccessLayer objDAL = new DataAccessLayer();
        DataSet ds = new DataSet();
        
        ds = objDAL.LoginDetailsCheck(Convert.ToInt32(txtUserIDLogIn.Text), txtPasswordLogin.Text);
        if (ds != null && ds.Tables[0].Rows.Count > 0)
            Response.Redirect("Student.aspx");
        
    }
}