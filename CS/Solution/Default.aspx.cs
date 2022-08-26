using DevExpress.Web;
using System;

namespace Solution {
    public partial class Default : System.Web.UI.Page {
        protected void Page_Init(object sender, EventArgs e) {
            if (Session["baseURL"] == null)
                Session["baseURL"] = "Products.aspx";
        }
        protected void hyperLink_Init(object sender, EventArgs e) {
            ASPxHyperLink link = (ASPxHyperLink)sender;

            GridViewDataItemTemplateContainer templateContainer = (GridViewDataItemTemplateContainer)link.NamingContainer;

            int rowVisibleIndex = templateContainer.VisibleIndex;
            string ean13 = templateContainer.Grid.GetRowValues(rowVisibleIndex, "EAN13").ToString();
            string contentUrl = string.Format("{0}?EAN13={1}", Session["baseURL"], ean13);

            link.NavigateUrl = "javascript:void(0);";
            link.Text = string.Format("More Info: EAN13 - {0}", ean13);
            link.ClientSideEvents.Click = string.Format("function(s, e) {{ OnMoreInfoClick('{0}'); }}", contentUrl);
        }
    }
}