<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <h1>
            Pogoda by Artur Matkowski &amp; Tyberiusz XYZ</h1>
        <p>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Width="319px" AutoPostBack="True">
                <asp:ListItem Selected="True">Zaloguj</asp:ListItem>
                <asp:ListItem>Zarejestruj</asp:ListItem>
                <asp:ListItem>Odzyskaj Konto</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" OnActiveViewChanged="MultiView1_ActiveViewChanged">
            <asp:View ID="ViewLogin" runat="server">
                Login:
                <asp:TextBox ID="TextBoxLogin" runat="server"></asp:TextBox>
                <br />
                Hasło:
                <asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="ButtonLogin" runat="server" OnClick="Button1_Click" Text="Login" Width="79px" />
            </asp:View>
            <asp:View ID="ViewRegister" runat="server">
                Login:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                Hasło:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                Ponownie Hasło:
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                E-mail:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" Width="211px"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Register" />
            </asp:View>
            <asp:View ID="ViewForgotPassword" runat="server">
                E-mail:
                <asp:TextBox ID="TextBox5" runat="server" Width="211px"></asp:TextBox>
                <br />
                <asp:Button ID="Button2" runat="server" Text="Resent Password" />
            </asp:View>
            <br />
            <br />
            <br />
        </asp:MultiView>
    </form>
</body>
</html>
