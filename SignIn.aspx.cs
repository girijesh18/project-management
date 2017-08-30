using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



public partial class SignIn : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        BindSection();
        BindGroupNumber();
    }

    private void BindSection()
    {
        DataSet ds = new DataSet();
        
        DataAccessLayer objDAL = new DataAccessLayer();
        ds = objDAL.GetSection();
        if (ds != null)
        {
            ddlSection.DataSource = ds;
            ddlSection.DataTextField = "SectionName";
            ddlSection.DataValueField = "SectionID";
            ddlSection.DataBind();
        }
    }
    private int GenderData()
    {
        int i=0;
        if (rdbMale.Checked == true)
        {
            i = 1;
        }
        if (rdbFemale.Checked == true)
        {
            i = 1;
        }
        return i;
    }
    private void BindGroupNumber()
    {
        int GroupCount = 0;
        DataSet ds = new DataSet();
        DataAccessLayer objDAL = new DataAccessLayer();
         ds = objDAL.GroupCount();
        
        if (ds != null && ds.Tables[0].Rows.Count>0)
        {
            ddlGroupNumber.DataSource = ds.Tables[0];
            ddlGroupNumber.DataTextField = "GroupName";
            ddlGroupNumber.DataValueField = "GroupId";
            ddlGroupNumber.DataBind();
        }
    }
    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        DataAccessLayer objDAL = new DataAccessLayer();

        UserMaster objBL = new UserMaster();
        objBL.UserID = txtUserID.Text;
        objBL.Name = txtName.Text;
        objBL.Gender = GenderData();
        objBL.Section = Convert.ToInt32(ddlSection.SelectedValue);
        objBL.Password = txtPassword.Text;
        objBL.Mobile = txtMobile.Text;
        objBL.Email = txtEmail.Text;
        objBL.ProjectMember = Convert.ToInt32(ddlProjectMember.SelectedValue);
        if(objBL.ProjectMember == 1)
            objBL.GroupNumber = Convert.ToInt32(hidGroupID.Value);
        else
        objBL.GroupNumber = Convert.ToInt32(ddlGroupNumber.SelectedValue);

        objBL.Year = Convert.ToInt32(ddlYear.SelectedValue);
        objBL.Semster = Convert.ToInt32(ddlSemster.SelectedValue);
        objBL.ProjectTitle = txtProjectName.Text;
        objBL.ProjectDescription = txtProjectDescription.Text;
        objBL.CreatedBy = txtUserID.Text;
        int succ = objDAL.SaveData(objBL);
        if(succ > 0)
        {
            lblMsg.Text = "Data Saved ";
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {

    }

    protected void ddlProjectMember_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataAccessLayer objDAL = new DataAccessLayer();
        DataSet ds = new DataSet();
        Int32 MemberType = 0;
        Int32 TotalGroupCount = 0;
        string GroupName = string.Empty;
        MemberType = Convert.ToInt32(ddlProjectMember.SelectedValue);
        if (MemberType == 1)
        {
          ds = objDAL.GroupCount();
            if(ds != null && ds.Tables[1].Rows.Count > 0)
            {
                TotalGroupCount = Convert.ToInt32(ds.Tables[1].Rows[0][0]);
                TotalGroupCount += 1;
            }
            GroupName = "G" + TotalGroupCount;
            objDAL.AddGroup(TotalGroupCount, GroupName);
            hidGroupID.Value = TotalGroupCount.ToString();
            
            divGroupNumber.Visible = false;
            GroupNumber.Visible = false;
            divProjectName.Visible = true;
            divProjectDescription.Visible = true;


        }
        else
        {
            divGroupNumber.Visible = true;
            GroupNumber.Visible = true;
            divProjectName.Visible = false;
            divProjectDescription.Visible = false;
        }
    }

    protected void ddlSemster_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}