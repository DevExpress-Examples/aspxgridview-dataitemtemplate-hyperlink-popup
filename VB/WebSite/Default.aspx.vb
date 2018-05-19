Imports Microsoft.VisualBasic
Imports System
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.ASPxEditors

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
		If Session("baseURL") Is Nothing Then
			Session("baseURL") = "Pruducts.aspx"
		End If
	End Sub
	Protected Sub hyperLink_Init(ByVal sender As Object, ByVal e As EventArgs)
		Dim link As ASPxHyperLink = CType(sender, ASPxHyperLink)

		Dim templateContainer As GridViewDataItemTemplateContainer = CType(link.NamingContainer, GridViewDataItemTemplateContainer)

		Dim rowVisibleIndex As Integer = templateContainer.VisibleIndex
		Dim ean13 As String = templateContainer.Grid.GetRowValues(rowVisibleIndex, "EAN13").ToString()
		Dim contentUrl As String = String.Format("{0}?EAN13={1}", Session("baseURL"), ean13)

		link.NavigateUrl = "javascript:void(0);"
		link.Text = String.Format("More Info: EAN13 - {0}", ean13)
		link.ClientSideEvents.Click = String.Format("function(s, e) {{ OnMoreInfoClick('{0}'); }}", contentUrl)
	End Sub
End Class