<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHome.master" AutoEventWireup="true" CodeFile="ViewPreviousBookings.aspx.cs" Inherits="ViewPreviousBookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style10
        {
            font-family: "Franklin Gothic Medium";
            text-align: center;
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
                <span class="style10">---------------------------------------------------</span><asp:Label 
                    ID="lblLogin" runat="server" CssClass="style10" 
                    style="font-size: xx-large; font-weight: 700" Text="MY BOOKINGS"></asp:Label>
                <span class="style10">---------------------------------------------------</span></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" 
                                onpageindexchanging="GridView1_PageIndexChanging" Width="100%" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
                                BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                                ForeColor="Black" GridLines="Vertical" 
                                style="text-align: center; font-family: 'HP Simplified'; font-size: large;" 
                                onrowdeleting="GridView1_RowDeleting">
                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" 
                                                ToolTip="Click Here To Cancel Booking">Cancel</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="BookingID" HeaderText="Booking ID" ReadOnly="True" />
                                    <asp:BoundField DataField="CarNo" HeaderText="Car Number" ReadOnly="True" />
                                    <asp:BoundField DataField="BDateTime" HeaderText="Booking Date" 
                                        ReadOnly="True" />
                                    <asp:BoundField DataField="PDate" HeaderText="Pick Up Date" ReadOnly="True" />
                                    <asp:BoundField DataField="PTime" HeaderText="Pick Up Time" ReadOnly="True" />
                                    <asp:BoundField DataField="Plocation" HeaderText="Pick Up Location" 
                                        ReadOnly="True" />
                                    <asp:BoundField DataField="DDate" HeaderText="Drop Off Date" ReadOnly="True" />
                                    <asp:BoundField DataField="DTime" HeaderText="Drop Off Time" ReadOnly="True" />
                                    <asp:BoundField DataField="Amount" HeaderText="Amount (₹)" ReadOnly="True" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblmsg" runat="server" 
                    style="font-family: 'HP Simplified'; color: #FF0000; font-size: x-large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

