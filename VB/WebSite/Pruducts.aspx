<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Pruducts.aspx.vb" Inherits="Pruducts" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="ds" KeyFieldName="ProductID">
			<Columns>
				<dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
					<EditFormSettings Visible="False" />
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="2">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="3">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="4">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="5">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="6">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="7">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="ReorderLevel" VisibleIndex="8">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="9">
				</dx:GridViewDataCheckColumn>
				<dx:GridViewDataTextColumn FieldName="EAN13" VisibleIndex="10">
				</dx:GridViewDataTextColumn>
			</Columns>
		</dx:ASPxGridView>
	</div>
		<asp:AccessDataSource ID="ds" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued], [EAN13] FROM [Products] WHERE ([EAN13] = ?)">
			<SelectParameters>
				<asp:QueryStringParameter Name="EAN13" QueryStringField="EAN13" Type="String" />
			</SelectParameters>
		</asp:AccessDataSource>
	</form>
</body>
</html>