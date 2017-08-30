<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <asp:Label ID="lblErrorMessage" runat="server"></asp:Label>
    </div>
    <table>
        <tr>
            <td>
                <asp:Label ID="lblUserIDLogIn" runat="server" Text="User ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUserIDLogIn" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <br />
            <td>
                <br />
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <br />
                <asp:TextBox ID="txtPasswordLogin" runat="server"></asp:TextBox>
                <br />
                <span id="passwordMessage" >Password must be eight character</span>
            </td>   
        </tr>
      
        <tr>
            <td>
                <br />
                <asp:Button ID="btnLogIn" runat="server" Text="Log In" OnClick="btnLogIn_Click" />
            </td>
            <td>
                <br />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
            </td>

        </tr>

    </table>

    <script type="text/javascript">
    $(document).ready(function () {
        $('#<% =lblErrorMessage.ClientID%>').hide();
        $("passwordMessage").hide();
    });
    function validate() {
        $('#<% =lblErrorMessage.ClientID%>').hide();
        $("passwordMessage").hide();
        var iError;
        if ($('#<% =txtUserIDLogIn.ClientID %>').val() == "") {
            msgError = "All Fields are required!!";
            iError++;
        }
        if ($('#<% =txtPasswordLogin.ClientID %>').val() == " " ) {
            msgError = "All Fields are required!!";
            iError++;
        }
        if ($('#<% =txtPasswordLogin.ClientID %>').val() != " " && passwordMaxLength()) {
            $("passwordMessage").show();
            iError++;
        }
        if (iError == 0)
            return true;
        else {
            $('#<% =lblErrorMessage.ClientID%>').html(msgError);
            $('#<% =lblErrorMessage.ClientID%>').show();
            return false;
        }
    }
        function passwordMaxLength() {
            var passwordSize = $('#<% =txtPasswordLogin.ClientID %>').val();
            if (passwordSize.count <= 7)
                return false;
            else
                return true;
        }
</script>
</asp:Content>
