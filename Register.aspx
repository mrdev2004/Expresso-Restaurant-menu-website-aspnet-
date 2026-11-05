<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <title>Registration Form</title>
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            margin-top: 50px;
            top: 0px;
            left: 0px;
        }
        .form-control {
            margin-bottom: 15px;
        }
        .card-header, .btn-primary, .btn-danger {
            background-color: #007bff;
            border-color: #007bff;
            color: white;
        }
        .btn-danger {
            background-color: #dc3545;
            border-color: #dc3545;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">
                            <h3>Registration Form&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                            </h3>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="TextBox10">ID</label>
                                <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" placeholder="Enter ID"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvID" runat="server" ControlToValidate="TextBox10"
                                    ErrorMessage="ID is required" CssClass="text-danger" Display="Dynamic" />
                            </div>
                            <div class="form-group">
                                <label for="TextBox1">First Name</label>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter first name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="TextBox1"
                                    ErrorMessage="First name is required" CssClass="text-danger" Display="Dynamic" />
                            </div>
                            <div class="form-group">
                                <label for="TextBox2">Last Name</label>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Enter last name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="TextBox2"
                                    ErrorMessage="Last name is required" CssClass="text-danger" Display="Dynamic" />
                            </div>
                            <div class="form-group">
                                <label for="TextBox3">Username</label>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Enter username"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="TextBox3"
                                    ErrorMessage="Username is required" CssClass="text-danger" Display="Dynamic" />
                            </div>
                            <div class="form-group">
                                <label for="TextBox4">Password</label>
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="TextBox4"
                                    ErrorMessage="Password is required" CssClass="text-danger" Display="Dynamic" />
                            </div>
                            <div class="form-group">
                                <label for="TextBox5">State</label>
                                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="DropDownList1"
                                    InitialValue="" ErrorMessage="State is required" CssClass="text-danger" Display="Dynamic" />
                            </div>
                            <div class="form-group">
                                <label for="TextBox6">City</label>
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="DropDownList2"
                                    InitialValue="" ErrorMessage="City is required" CssClass="text-danger" Display="Dynamic" />
                            </div>
                            <div class="form-group">
                                <label for="TextBox7">Address</label>
                                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="Enter address"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="TextBox7"
                                    ErrorMessage="Address is required" CssClass="text-danger" Display="Dynamic" />
                            </div>
                            <div class="form-group">
                                <label for="TextBox8">Email</label>
                                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" placeholder="Enter email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="TextBox8"
                                    ErrorMessage="Email is required" CssClass="text-danger" Display="Dynamic" />
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="TextBox8"
                                    ErrorMessage="Invalid email format" CssClass="text-danger" Display="Dynamic"
                                    ValidationExpression="\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}" />
                            </div>
                            <div class="form-group">
                                <label for="TextBox9">Phone Number</label>
                                <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" placeholder="Enter phone number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" ControlToValidate="TextBox9"
                                    ErrorMessage="Phone number is required" CssClass="text-danger" Display="Dynamic" />
                                <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server" ControlToValidate="TextBox9"
                                    ErrorMessage="Invalid phone number format" CssClass="text-danger" Display="Dynamic"
                                    ValidationExpression="^\d{10}$" />
                            </div>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" CssClass="btn btn-primary btn-lg btn-block" />
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Login" CssClass="btn btn-danger btn-lg btn-block mt-2" />
                            <asp:Label ID="LabelMessage" runat="server" CssClass="mt-3"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
