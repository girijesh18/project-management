<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Faculty_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignIn.aspx">Register</asp:HyperLink></td>
            <td>

                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/LogIn.aspx">Login</asp:HyperLink></td>
        </tr>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

    </table>
</asp:Content>

