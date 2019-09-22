<%@ Page Title="" Language="C#" MasterPageFile="~/AdminStartup.master" AutoEventWireup="true" CodeFile="AddCarCat.aspx.cs" Inherits="AddCarCat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            font-family: "Franklin Gothic Medium";
        }
        .style11
        {
            text-align: center;
            margin-left: 40px;
        }
        .style12
        {
            text-align: center;
            height: 22px;
        }
        .style13
        {
            font-family: "HP Simplified";
        }
        .style15
        {
            font-family: "HP Simplified";
        }
        .style16
        {
            color: #FF0000;
            font-family: "HP Simplified";
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
            <td class="style11">
                <span class="style10">----------------------------------------------------</span><asp:Label 
                    ID="lblLogin" runat="server" CssClass="style10" 
                    style="font-size: xx-large; font-weight: 700" Text="ADD CAR CATEGORY"></asp:Label>
                <span class="style10">---------------------------------------------------</span></td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <span class="style15"><strong>(</strong></span><span class="style16"><strong>*</strong></span><span 
                    class="style15"><strong>) REQUIRED FIELDS</strong></span></td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Label ID="lblCarNo" runat="server" 
                    style="color: #0066FF; font-size: large; font-weight: 700; text-align: left;" 
                    Text="CATEGORY NAME :" CssClass="style13"></asp:Label>
                <span class="style16"><strong>*</strong></span><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtCarCatName" runat="server" Width="302px" 
                    placeholder="Insert Car Category" ToolTip ="Car Category Name" 
                    ontextchanged="txtCatName_TextChanged" style="text-align: center" 
                    CssClass="style13" MaxLength="50"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="txtCarCatName" ErrorMessage="Field Is Missing" 
                    
                    style="font-family: Castellar; font-weight: 700; color: #FF0000; font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Label ID="lblCarNo0" runat="server" 
                    style="color: #0066FF; font-size: large; font-weight: 700; text-align: left;" 
                    Text="SEATER :" CssClass="style13"></asp:Label>
                <span class="style16"><strong>*</strong></span><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtSeater" runat="server" Width="303px" 
                    placeholder="Add Number Of Seats In Car" ToolTip ="Seater" 
                    ontextchanged="txtSeater_TextChanged" style="text-align: center" 
                    CssClass="style13" MaxLength="2"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="txtSeater" ErrorMessage="Field Is Missing" 
                    
                    style="font-family: Castellar; font-weight: 700; color: #FF0000; font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;
                <asp:Label ID="lblmsg" runat="server" 
                    
                    style="color: #FF0000; font-size: large; font-weight: 700; text-align: left;" 
                    CssClass="style13"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Button ID="btnSubmitCat" runat="server" BackColor="Gray" 
                    BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="5px" Height="59px" 
                    style="color: #000000; font-family: 'Berlin Sans FB'; font-weight: 700" 
                    Text="SUBMIT" Width="215px" onclick="btnSubmitCat_Click" />
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

