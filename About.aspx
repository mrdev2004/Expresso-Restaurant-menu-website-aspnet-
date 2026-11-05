<%@ Page Title="About Us - Restaurant Name" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>About Us - Restaurant Name</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12 text-center">
                <h1 class="display-4">About Us</h1>
                <p class="lead">Welcome to Expresso Restaurant</p>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-md-6">
                <img src="https://wallpapercave.com/wp/wp1874159.jpg" class="img-fluid rounded" alt="Restaurant Image">
            </div>
            <div class="col-md-6">
                <h2>Our Story</h2>
                <p>
                    Founded in [Year], Expresso Restaurant has been serving delicious, authentic cuisine in the heart of [Location]. Our mission is to provide our guests with an unforgettable dining experience through our carefully crafted dishes, warm atmosphere, and excellent service.
                </p>
                <p>
                    Whether you're looking for a casual meal or a place to celebrate a special occasion, Expresso Restaurant is the perfect choice. We pride ourselves on using only the freshest ingredients to create dishes that are both flavorful and satisfying.
                </p>
            </div>
        </div>

        <div class="row mt-5">
            <div class="col-md-4 text-center">
                <h3>Our Mission</h3>
                <p>To bring people together over delicious food and create lasting memories.</p>
            </div>
            <div class="col-md-4 text-center">
                <h3>Our Values</h3>
                <p>Quality, Integrity, Hospitality, and Community.</p>
            </div>
            <div class="col-md-4 text-center">
                <h3>Contact Us</h3>
                <p>Email: info@restaurant.com<br />Phone: (123) 456-7890</p>
            </div>
        </div>
    </div>
</asp:Content>
