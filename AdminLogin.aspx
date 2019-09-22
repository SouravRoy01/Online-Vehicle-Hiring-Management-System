<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHome.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style18
        {
            width: 79%;
            font-size: xx-large;
            font-family: "Franklin Gothic Medium";
            text-align: center;
        }
        .style19
        {
            font-size: x-large;
            color: #FF0000;
        }
        .style20
        {
            font-family: "HP Simplified";
        }
        .style21
        {
            font-family: "HP Simplified";
            font-size: medium;
        }
        .style15
        {
            font-family: "HP Simplified";
        }
        .style14
        {
            color: #FF0000;
            font-family: "HP Simplified";
        }
        .style22
        {
            width: 79%;
            font-size: small;
            font-family: "Franklin Gothic Medium";
            text-align: center;
            height: 24px;
        }
        .style23
        {
            width: 79%;
            font-size: small;
            font-family: "Franklin Gothic Medium";
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                ----------------------LOG IN------------------------</td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                <span class="style15"><strong>(</strong></span><span class="style14"><strong>*</strong></span><span 
                    class="style15"><strong>) REQUIRED FIELDS</strong></span></td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Label runat="server" 
                    style="color: #0066FF; font-size: x-large; font-weight: 700" 
                    Text="Email ID :" CssClass="style20"></asp:Label>
                <span class="style19">*</span><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtEmail" runat="server" 
                    style="text-align: center;" 
                    Width="444px" placeholder="someone@example.com" ToolTip ="Email ID" 
                    CssClass="style21" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Email ID Required" 
                    
                    style="font-size: medium; font-family: 'HP Simplified'; font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Invaild Email ID" 
                    style="font-family: 'HP Simplified'; font-size: medium; color: #0066FF; font-weight: 700" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Label ID="lblUserPassword" runat="server" 
                    style="color: #0066FF; font-size: x-large; font-weight: 700" 
                    Text="Password :" CssClass="style20"></asp:Label>
                <span class="style19">*</span><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtPass" runat="server" CssClass="style11" 
                    placeholder="Insert Password" 
                    style="font-family: 'HP Simplified'; text-align: center; font-size: medium;" 
                    ToolTip="Password" Width="447px" TextMode="Password" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPass" ErrorMessage="Password Required" 
                    
                    style="font-size: medium; font-family: 'HP Simplified'; font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Label ID="lblmsg" runat="server" 
                    style="font-family: 'HP Simplified'; font-size: medium; color: #FF0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Button ID="btnsubmit" runat="server" BackColor="Black" 
                    BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="5px" Height="59px" 
                    style="color: #FFFFFF; font-family: 'Berlin Sans FB'; font-weight: 700" 
                    Text="LOGIN" Width="134px" onclick="btnsubmit_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

