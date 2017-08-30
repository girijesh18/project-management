<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignIn.aspx">Register</asp:HyperLink>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/LogIn.aspx">Login</asp:HyperLink>
    <script type="text/javascript">
        $(document).ready(function () {

        });
        function validate() {


        }

    </script>


</asp:Content>

