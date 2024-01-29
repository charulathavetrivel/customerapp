<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="customerapp.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 33px;
        }
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td colspan="3"><h2>Customer information</h2></td>
            </tr>
            <tr>
                <td class="auto-style2">Customer Name</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextName" ErrorMessage="*Enter Customer Name" ForeColor="Purple"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2">
                    <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="TextName" ErrorMessage="Name must have altleast 6 characters" ForeColor="Purple" OnServerValidate="CustomValidator4_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td>Customer Mobile</td>
                <td>
                    <asp:TextBox ID="TextMobilenumber" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextMobilenumber" ErrorMessage="*Enter Mobile number" ForeColor="Purple"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextMobilenumber" ErrorMessage="must have 10 digit" ForeColor="Purple" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextEmail" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextEmail" ErrorMessage="* Enter email id" ForeColor="Purple"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextEmail" ErrorMessage="Invalid email" ForeColor="Purple" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="TextPassword" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextPassword" ErrorMessage="* Enter Password" ForeColor="Purple"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass@123" ControlToValidate="TextPassword" ErrorMessage="value pass@123" ForeColor="Purple"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="3">
                    <asp:Button ID="Btnregister" runat="server" OnClick="Btnregister_Click" Text="Register" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Lblinfo" runat="server" Text="Registeration Done"></asp:Label>
                </td>
                <td colspan="3">&nbsp;</td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
    </form>
</body>
</html>
