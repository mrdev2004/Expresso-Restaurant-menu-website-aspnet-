<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" href="Login.css"/>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <style type="text/css">
        
        #form1
        {
            height: 455px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
&nbsp;<asp:Label ID="Label1" runat="server" Text="Login Form"      ></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"  placeholder="Enter username" ></asp:TextBox>
       <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="TextBox1"
                                    ErrorMessage="Username is required" CssClass="text-danger" Display="Dynamic" />
                           
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"  placeholder="Enter password"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="TextBox2"
                                    ErrorMessage="Password is required" CssClass="text-danger" Display="Dynamic" />
    <br />
    <div class="Buttondiv">  <asp:Button ID="Button1" runat="server" 
            CssClass="btn btn-primary btn-lg" onclick="Button1_Click1" 
        Text="Login" />
        
        <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger btn-lg ms-5" 
            Text="Register" onclick="Button2_Click" /></div>
  
    <div>
    </div>
    </form>
</body>
</html>
