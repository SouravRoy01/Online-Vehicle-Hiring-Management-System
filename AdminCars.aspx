<%@ Page Title="" Language="C#" MasterPageFile="~/AdminStartup.master" AutoEventWireup="true" CodeFile="AdminCars.aspx.cs" Inherits="AdminCars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            font-family: "Franklin Gothic Medium";
        }
        .style11
        {
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
            <td class="style11">
                <span class="style10">----------------------------------------------------</span><asp:Label 
                    ID="lblCars" runat="server" CssClass="style10" 
                    style="font-size: xx-large; font-weight: 700" Text="CARS"></asp:Label>
                <span class="style10">---------------------------------------------------</span></td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Button ID="btnAddCat" runat="server" BackColor="Black" 
                    BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="5px" Height="59px" 
                    style="color: #FFFFFF; font-family: 'Berlin Sans FB'; font-weight: 700" 
                    Text="ADD CATEGORY" Width="330px" PostBackUrl="~/AddCarCat.aspx" />
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Button ID="btnAddCar" runat="server" BackColor="Black" 
                    BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="5px" Height="59px" 
                    style="color: #FFFFFF; font-family: 'Berlin Sans FB'; font-weight: 700" 
                    Text="ADD CAR" Width="332px" PostBackUrl="~/AddCar.aspx" />
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Button ID="btnUpdateCar" runat="server" BackColor="Black" 
                    BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="5px" Height="59px" 
                    style="color: #FFFFFF; font-family: 'Berlin Sans FB'; font-weight: 700" 
                    Text="UPDATE CAR" Width="330px" PostBackUrl="~/UpdateCar.aspx" />
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Button ID="btnDeleteCar" runat="server" BackColor="Black" 
                    BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="5px" Height="59px" 
                    onclick="btnLoginUser2_Click" 
                    style="color: #FFFFFF; font-family: 'Berlin Sans FB'; font-weight: 700" 
                    Text="DELETE CAR" Width="330px" PostBackUrl="~/DeleteCar.aspx" />
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Button ID="btnViewCar" runat="server" BackColor="Black" 
                    BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="5px" Height="59px" 
                    style="color: #FFFFFF; font-family: 'Berlin Sans FB'; font-weight: 700" 
                    Text="VIEW CAR" Width="330px" onclick="btnViewCar_Click" 
                    PostBackUrl="~/ViewCar.aspx" />
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Button ID="btnhpgad" runat="server" BackColor="Black" 
                    BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="5px" Height="59px" 
                    style="color: #FFFFFF; font-family: 'Berlin Sans FB'; font-weight: 700" 
                    Text="GET BACK TO HOMEPAGE" Width="330px" onclick="btnViewCar_Click" 
                    PostBackUrl="~/HomePageAdmin.aspx" />
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

