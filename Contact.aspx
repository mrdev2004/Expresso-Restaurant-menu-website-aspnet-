<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Contact Us - Restaurant Name</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12 text-center">
                <h1 class="display-4">Contact Us</h1>
                <p class="lead">We'd love to hear from you!</p>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-md-8 offset-md-2">
                <div class="card">
                    <div class="card-body">
                        <asp:Label ID="lblMessage" runat="server" Text="" CssClass="text-success"></asp:Label>
                        <div class="form-group">
                            <asp:Label ID="lblName" runat="server" AssociatedControlID="txtName" CssClass="form-label">Name</asp:Label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter your name" required="required"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" CssClass="form-label">Email</asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your email" required="required" ></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblMessageLabel" runat="server" AssociatedControlID="txtMessage" CssClass="form-label">Message</asp:Label>
                            <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" placeholder="Enter your message" required="required"></asp:TextBox>
                        </div>
                        <div class="form-group text-center">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="Button1_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
