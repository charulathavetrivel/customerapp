using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace customerapp
{
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Lblinfo.Visible = false;
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Btnregister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Lblinfo.Visible = true;
                Lblinfo.Text = "Customer Name:" + TextName.Text;
                //Lblinfo.Text += "<br/> Password:" + TextPassword.Text;
                Lblinfo.Text += "<br/> Mobilenumber:" + TextMobilenumber.Text;
                Lblinfo.Text += "<br/> Email:" + TextEmail.Text;
                Lblinfo.Text += "<br/> Password:" + TextPassword.Text;
            }

        }

        //protected void CustomValidator5_ServerValidate(object source, ServerValidateEventArgs args)
        //{
          //  args.IsValid = TextPassword.Text== "pass@123";
        //}

        protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int num = args.Value.Length;
            args.IsValid = 6 <= num;
        }
    }
}