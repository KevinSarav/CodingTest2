using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodingTest2
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["customer"] != null)
            {
                Customer custObj = (Customer)Session["customer"];
                lblName.Text = "Name: " + custObj.Name;
                lblEmail.Text = "Email: " + custObj.Email;
                lblMembership.Text = "Membership: " + custObj.Membership;
                lblCompany.Text = "Company: " + custObj.Company;
                lbAge.Text = "Age: " + custObj.getAge();
            }
        }
    }
}