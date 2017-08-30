<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="AfterSignInPage.aspx.cs" Inherits="AfterSignInPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h3>Thank You!(name) Your account has been created  successfully And Your User Id is (user id).
            Kindly Log In to proceed!!
        </h3>
    </div>
    <div style="align-content:center; margin-left: 400px;">
        <asp:Button ID="AfterSignInLogIn" runat="server" Text="Log In" PostBackUrl="~/LogIn.aspx" /></div>
    
</asp:Content>

