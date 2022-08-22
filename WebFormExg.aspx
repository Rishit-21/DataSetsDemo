<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormExg.aspx.cs" Inherits="DataSetsDemo.WebFormExg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 34px;
        }
        .auto-style2 {
            width: 35px;
        }
        .auto-style3 {
            width: 37px;
        }
        .auto-style4 {
            width: 40px;
        }
        .auto-style5 {
            width: 43px;
        }
        .auto-style6 {
            width: 226px;
        }
        .auto-style7 {
            width: 150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Uname" runat="server" Text="User Name:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="UserNameTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="PhNo" runat="server" EnableTheming="True" Text="Phone No:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="PhNoTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="EmailID" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="EmailIdTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style2">
                        <asp:Button ID="SubmitBtn" runat="server" OnClick="SubmitBtn_Click" Text="Submit" />
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <asp:Label ID="DisplayMsg" runat="server" ></asp:Label>
        <br />
        <br />
        <table >
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" ></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" ></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label3" runat="server" ></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label6" runat="server" ></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
