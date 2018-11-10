<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<script type="text/javascript" language="javascript">
	function OnMoreInfoClick(contentUrl) {
		clientPopupControl.SetContentUrl(contentUrl);
		clientPopupControl.Show();
	}
	</script>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="ds"
				KeyFieldName="ProductID">
				<Columns>
					<dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
						<EditFormSettings Visible="False" />
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="2">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="3">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="4">
					</dx:GridViewDataCheckColumn>
					<dx:GridViewDataTextColumn FieldName="EAN13" VisibleIndex="5">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn Caption="More Info" UnboundType="String" VisibleIndex="6">
						<DataItemTemplate>
							<dx:ASPxHyperLink ID="hyperLink" runat="server" OnInit="hyperLink_Init">
							</dx:ASPxHyperLink>
						</DataItemTemplate>
					</dx:GridViewDataTextColumn>
				</Columns>
			</dx:ASPxGridView>
		</div>
		<dx:ASPxPopupControl ID="popupControl" runat="server" ClientInstanceName="clientPopupControl" CloseAction="CloseButton" Height="200px" Modal="True" Width="850px" PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter">
			<ContentCollection>
				<dx:PopupControlContentControl runat="server">
				</dx:PopupControlContentControl>
			</ContentCollection>
		</dx:ASPxPopupControl>
		<asp:AccessDataSource ID="ds" runat="server" DataFile="~/App_Data/nwind.mdb"
			SelectCommand="SELECT [ProductID], [ProductName], [QuantityPerUnit], [UnitPrice], [Discontinued], [EAN13] FROM [Products]">
		</asp:AccessDataSource>
	</form>
</body>
</html>