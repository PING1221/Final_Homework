<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homework.aspx.cs" Inherits="Final_homework.homework" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 24px;
            position: relative;
            top: 0px;
            left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 355px; height: 509px; background-color: #F0F0F0;">
            <div>
                <asp:Panel ID="Panel3" runat="server" Height="21px" style="font-weight: 700">
                    <h3 class="auto-style1" dir="ltr">掛號系統 </h3>
                </asp:Panel>
                    <br />
                    <asp:Panel ID="Panel2" runat="server" BackColor="#CCCCCC" Height="20px">
                        &nbsp;
                        <asp:Label ID="Label1" runat="server" style="text-align: left" Text="姓名:" Font-Size="X-Small"></asp:Label>
&nbsp;
            <asp:TextBox ID="tb_Name" runat="server" style="text-align: left"  Height="10px" Width="93px"></asp:TextBox><br /><br />
            </asp:Panel>
            </div>
            <br />
            <asp:Panel ID="Panel1" runat="server" BackColor="#CCCCCC" Height="20px" style="background-color: #CCCCCC">
                &nbsp;
                <asp:Label ID="Label7" runat="server" Text="年齡:" Font-Size="X-Small"></asp:Label>
&nbsp;
                <asp:TextBox ID="tb_Age" runat="server" Height="10px" Width="92px"></asp:TextBox>
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel4" runat="server" Height="20px" style="background-color: #CCCCCC">
                &nbsp;
                <asp:Label ID="Label2" runat="server" Text="性別:" Font-Size="X-Small"></asp:Label>
                &nbsp;<asp:RadioButton ID="rb1" runat="server" GroupName="Sex" Text="男" Font-Size="X-Small" />
                <asp:RadioButton ID="rb2" runat="server" GroupName="Sex" Text="女" Font-Size="X-Small" />
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel5" runat="server" Height="20px" style="background-color: #CCCCCC">
                &nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="身分證:" Font-Size="X-Small"></asp:Label>
                &nbsp;&nbsp; 
                <asp:TextBox runat="server" Height="10px" Width="133px" ID="user_id"></asp:TextBox>
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel7" runat="server" Height="20px" style="background-color: #CCCCCC">
                &nbsp;
                <asp:Label ID="Label4" runat="server" Font-Size="X-Small" Text="電話號碼:"></asp:Label>
                &nbsp;<asp:TextBox ID="tb_num" runat="server" Height="10px"></asp:TextBox>
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel8" runat="server" Height="20px" style="background-color: #CCCCCC">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="科別:" Font-Size="X-Small"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="146px" style="margin-left: 0px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="1" Text="一般內科"></asp:ListItem>
                    <asp:ListItem Value="2" Text="一般外科"></asp:ListItem>
                    <asp:ListItem Value="3" Text="泌尿科"></asp:ListItem>
                    <asp:ListItem Value="4" Text="眼科"></asp:ListItem>
                    <asp:ListItem Value="5" Text="骨科"></asp:ListItem>
                    <asp:ListItem Value="6" Text="皮膚科"></asp:ListItem>
                    <asp:ListItem Value="7" Text="婦產科"></asp:ListItem>
                    <asp:ListItem Value="8" Text="小兒科"></asp:ListItem>
                </asp:DropDownList>
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel9" runat="server" Height="20px" style="background-color: #CCCCCC">
                &nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="備註:" Font-Size="X-Small"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox5" runat="server"  Height="10px" Width="274px" EnableTheming="True"></asp:TextBox>
                &nbsp;</asp:Panel>
            <br />

        <asp:Button ID="Button1" runat="server" Text="確認" Height="22px"  Width="85px" ForeColor="#9933FF" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="lb_Res" runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>