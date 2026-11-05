<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <style type="text/css">
        .style1 {
            width: 100%;
        }
        .card {
            width: 300px;
            border: 1px solid black;
            padding: 10px;
            margin: 10px;
            text-align: center;
            font-size:20px;
            font-family:Calibri;
            font-weight:700;
            margin-left:50px;               
        }
        .card img {
            max-width: 100%;
            height: auto;
            margin-left:50px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" Width="774px">
        <ItemTemplate>
            <div class="card">
                <p>Name: <%# Eval("item_name") %></p>
                <p>Price: <%# Eval("item_price") %></p>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img", "~/images/{0}") %>' Height="144px" Width="198px" />
                  <br /><br />
                    <asp:Button ID="OrderButton" runat="server"  CssClass="btn-danger" Text="Order Now" OnClick="OrderButton_Click" CommandArgument='<%# Eval("Item_id") %>' />
                </div>
                <hr />
            </ItemTemplate>
        </asp:DataList>
        <br />
    </p>
    <asp:Label ID="OrderMessageLabel" runat="server" ForeColor="Green"></asp:Label>
</asp:Content>
