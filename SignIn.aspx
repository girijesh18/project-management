<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 128px;
        }
        .auto-style2 {
            margin-left: 80px;
            height: 59px;
        }
        .auto-style3 {
            height: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <br />
        <asp:Label ID="lblErrorMessage" runat="server" Text="Label" Style="text-align: center"></asp:Label>
    </div>
    <table>
        <tr>
            <td>
                <asp:Label ID="lblUserID" runat="server" Text="User ID"></asp:Label>
            </td>

            <td class="auto-style1">
                <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
            </td>

            <td class="auto-style1">
                <br />
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="auto-style1">
                <br />
                <asp:RadioButton ID="rdbMale" runat="server" Text="Male"></asp:RadioButton>
            </td>
            <td>
                <br />
                <asp:RadioButton ID="rdbFemale" runat="server" Text="Female"></asp:RadioButton>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="lblsection" runat="server" Text="Section"></asp:Label>
            </td>
            <td class="auto-style1">
                <br />
                <asp:DropDownList ID="ddlSection" runat="server"></asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>
                <br />
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            </td>

            <td class="auto-style1">
                <br />
                <asp:TextBox ID="txtPassword"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="lblCnfmPassword" runat="server" Text="Confirm Password"></asp:Label>
            </td>

            <td class="auto-style1">
                <br />
                <asp:TextBox ID="txtConfirmpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="lblMobile" runat="server" Text="Mobile"></asp:Label>
            </td>

            <td class="auto-style1">
                <br />
                <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="lblEmail" runat="server" Text="E-Mail"></asp:Label>
            </td>

            <td class="auto-style1">
                <br />
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td>
                <br />
                <asp:Label runat="server" Text="Project Member"></asp:Label>
            </td>
            <td class="auto-style1">
                <br />
                <asp:DropDownList ID="ddlProjectMember" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlProjectMember_SelectedIndexChanged">
                    <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Team Leader" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Team Member" Value="2"></asp:ListItem>
                </asp:DropDownList>

                <br />

            </td>
            </tr>
        
            <tr>
                <td>
                    <br />
                    <div id="divGroupNumber" runat="server">
                        <asp:Label ID="lblGroupNumber" runat="server" Text="Group Number"></asp:Label>
                    </div>
                </td>
                <td class="auto-style1">
                    <br />

                    <div id="GroupNumber" runat="server">
                        <asp:DropDownList runat="server" ID="ddlGroupNumber"></asp:DropDownList>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label runat="server" Text="Year"></asp:Label>
                </td>
                <td class="auto-style1">
                    <br />
                    <asp:DropDownList ID="ddlYear" runat="server">
                        <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Third " Value="1"></asp:ListItem>
                        <asp:ListItem Text="Fourth " Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label runat="server" Text="Semester"></asp:Label>
                </td>
                <td class="auto-style1">
                    <br />
                    <asp:DropDownList ID="ddlSemster" runat="server">
                        <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Fifth " Value="1"></asp:ListItem>
                        <asp:ListItem Text="Sixth " Value="2"></asp:ListItem>
                        <asp:ListItem Text="Sevent " Value="3"></asp:ListItem>
                        <asp:ListItem Text="Eight" Value="4"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            
        <tr>
            <td class="auto-style2">
            <div id="divProjectName" runat="server">
                <asp:Label ID="lblProjectName" runat="server" Text="Project Title" ></asp:Label>
                </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtProjectName" runat="server" Height="49px" Width="584px"></asp:TextBox>
            
                <br />
            </div>           
                </td>
            </tr>
        <tr>
            <td>
                <br/>
            <div id="divProjectDescription" runat="server">
                <asp:Label ID="lblProjectDescription" runat="server" Text="Project Description"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="txtProjectDescription" runat="server" Height="277px" Width="581px"></asp:TextBox>
            </div>
                </td>
            </tr>
        <tr>
                <td>
                    <br />
                    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                    <asp:Button ID="btnSignIn" runat="server" Text="Sign In" OnClick="btnSignIn_Click" OnClientClick="return (functionNameof jqueryFor Validation)" />
                </td>
                <td class="auto-style1">
                    <br />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                </td>
            </tr>
    </table>
    <asp:HiddenField ID="hidGroupID" runat="server" />
    <asp:HiddenField ID="hidGroupName" runat="server" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%=lblErrorMessage.ClientID %>').hide();
        });
        var iError = 0;
        function validate() {
            $('#<%=lblErrorMessage.ClientID %>').hide();
            if ($('#<% =txtUserID.ClientID%>').val() == " ") {
                msgError = "All Fields are required!!";
                iError++;
            }
        }
    </script>
</asp:Content>

