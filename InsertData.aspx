<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="InsertData.aspx.cs" Inherits="InsertData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <style>
        .container {
            height: auto;
            width: 60%;
            border: 1px solid #343a40;
            padding: 20px;
            margin-top: 20px;
            border-radius: 10px;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-group label {
            font-weight: bold;
        }
        .form-group input {
            width: 100%;
        }
        .btn-insert {
            background-color: #343a40;
            color: #ffc107;
            border: none;
        }
        .btn-insert:hover {
            background-color: #ffc107;
            color: #343a40;
        }
    </style>
    <div class="container">
      <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Item Id" CssClass="form-control-label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Item Name" CssClass="form-control-label"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Price" CssClass="form-control-label"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" Width="200px" />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Insert" CssClass="btn btn-insert" 
            onclick="Button1_Click" />
    </div>
</asp:Content>


