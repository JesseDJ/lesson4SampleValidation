using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Class4validation
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            //calculate tip
            Decimal tip = Convert.ToDecimal(txtAmount.Text) * Convert.ToDecimal (ddlPercent.SelectedValue);

            //display tip
            lblTip.Text = tip.ToString("c");//c in quotes formats as currency, overload

            //calculate total
            Decimal total = Convert.ToDecimal(txtAmount.Text) + tip;

            //display total
            lblTotal.Text = total.ToString("c");

            //display the results
            pnlResults.Visible = true;
        }

    }
}