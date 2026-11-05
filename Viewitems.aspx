<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Viewitems.aspx.cs" Inherits="Viewitems" %>

<script runat="server">

    
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <style type="text/css">
    .table
    {
        height:500px;
        width:100%;
        text-align:center;
        font-family:Calibri;
        font-weight:900;
        font-size:22px;
        }
    
    </style>
    <asp:GridView ID="GridView1" runat="server" 
     OnRowEditing="Gridview1_editing"   
      AutoGenerateColumns="False"


     CssClass="table-dark table mt-5"
      DataKeyNames="item_id"
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowupdating="GridView1_RowUpdating" 
        onrowdeleting="GridView1_RowDeleting">
        <Columns>
        <asp:BoundField HeaderText="ID" DataField="item_id" />
        <asp:BoundField HeaderText="Name" DataField="item_name" />
        <asp:BoundField HeaderText="Price" DataField="item_price" />

        <asp:CommandField  ShowEditButton="true"  HeaderText="Edit_Record"
         ControlStyle-CssClass="btn btn-primary">
<ControlStyle CssClass="btn btn-primary"></ControlStyle>
            </asp:CommandField>
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" ControlStyle-CssClass="btn btn-primary" />
        </Columns>
    </asp:GridView>

    </asp:Content>

