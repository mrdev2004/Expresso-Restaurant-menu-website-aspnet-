<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <style type="text/css">
        body {
            background-image: url("https://wallpapercave.com/wp/wp1874159.jpg");
            background-size: cover;
            background-attachment: fixed;
        }
        .txt1
        {
            margin-top:20px;
           
            font-size:40px;
            font-family:Gill Sans Ultra Bold;
            font-weight:900;
            color:White
          }
          .btn
          {
              margin-left:380px;
              height:100px;
              width:350px;
              border:1px solid white;
              background-color:transparent;
              color:White;
              font-size:20px;
              font-weight:900;
  
            }
            .btn a
            {
                color:White;
                }
            .btn a:hover
            {
                text-decoration:none;
                color:White;
                
               
              }
              .col1
              {
                  margin-top:180px;
                  }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12 col1">
                <h1 class="text-center text-white txt1">Welcome to Expresso's Restaurant</h1>
                <p class="text-center text-white txt1" >Enjoy our delicious meals and excellent service.</p>
                <button class="btn" > <a class href="Menu.aspx"> Explore Our Top Class Meals</a></button>
            </div>
        </div>
    </div>
</asp:Content>
