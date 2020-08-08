using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodingTest2
{
    public partial class Default : System.Web.UI.Page
    {
        Customer custObj = new Customer();

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                radBtnFree.Checked = true;
                fillDdlYear();
            }
        }

        private void fillDdlYear()
        {
            ddlYear.Items.Add("Year");
            for(int i = 1920; i < 2021; i++)
            {
                ddlYear.Items.Add(i.ToString());
            }
        }

        protected void CustValEmail_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string companyName = txtCompany.Text;
            string email = txtEmail.Text;

            if (email.Contains(companyName))
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                custObj.Name = txtName.Text;
                custObj.Email = txtEmail.Text;
                custObj.Company = txtCompany.Text;
                if(radBtnFree.Checked)
                    custObj.Membership = radBtnFree.Text;
                else if (radBtnBasic.Checked)
                    custObj.Membership = radBtnBasic.Text;
                else if (radBtnPremium.Checked)
                    custObj.Membership = radBtnPremium.Text;
                custObj.YearOfBirth = ddlYear.SelectedValue;

                Session["customer"] = custObj;
                Response.Redirect("Welcome.aspx");
            }
        }

        protected void CustValYear_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(ddlYear.SelectedValue.Equals("Year"))
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
    }
}