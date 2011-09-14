Imports System.Data.SqlClient

Partial Class AddressBook
    Inherits System.Web.UI.Page

Protected Sub grid_Sorting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewSortEventArgs) Handles grid.Sorting
  grid.DataBind()
End Sub

Protected Sub employeeDetails_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles employeeDetails.ItemInserted
  grid.DataBind()
End Sub

Protected Sub employeeDetails_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles employeeDetails.ItemUpdated
  grid.DataBind()
End Sub

Protected Sub employeeDetails_ItemDeleted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewDeletedEventArgs) Handles employeeDetails.ItemDeleted
  grid.DataBind()
End Sub

Protected Sub addEmployeeButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles addEmployeeButton.Click
    employeeDetails.ChangeMode(DetailsViewMode.Insert)
End Sub
End Class
