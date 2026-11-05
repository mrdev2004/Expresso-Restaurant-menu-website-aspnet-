<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="users.aspx.cs" Inherits="users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <style>
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
<asp:GridView ID="GridView1" runat="server" CssClass="table-dark table mt-5" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
    </asp:GridView>
  
</asp:Content>

