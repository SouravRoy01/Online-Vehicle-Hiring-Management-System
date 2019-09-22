<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHome.master" AutoEventWireup="true" CodeFile="BookingCar.aspx.cs" Inherits="BookingCar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            font-size: medium;
            font-family: "HP Simplified";
        }
    
        .style10
        {
            font-family: "Franklin Gothic Medium";
            text-align: center;
        }
        .style13
        {
            height: 27px;
        }
        .style14
        {
            font-family: "HP Simplified";
        }
        .style15
        {
            color: #FF0000;
        }
        .style18
        {
            text-align: center;
            font-family: "HP Simplified";
            color: #000000;
        }
        .style19
        {
            color: #FF0000;
            font-family: "HP Simplified";
        }
        .style20
        {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td colspan="20">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="20" style="text-align: center">
                <span class="style10">
                &nbsp;&nbsp;&nbsp;
                ------------------------------------------------------------------------</span><asp:Label 
                    ID="lblLogin" runat="server" CssClass="style10" 
                    style="font-size: xx-large; font-weight: 700" 
                    Text="SELECT PICK-UP DETAILS"></asp:Label>
                <span class="style10">
                -----------------------------------------------------------------------</span></td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="20" class="style18">
                <strong>(<span class="style15">*</span>) REQUIRED FIELDS</strong></td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblCarCat" runat="server" 
                    style="color: #0066FF; font-size: large; font-weight: 700" 
                    Text="PICK-UP DATE :" CssClass="style14"></asp:Label>
                <span class="style19">*</span></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp; </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" 
                    Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" 
                    ShowGridLines="True" ToolTip="DROP-OFF DATE CALENDER" Width="330px" 
                    SelectedDate="2016-01-12" 
                    style="font-size: medium; font-family: 'HP Simplified'" 
                    onselectionchanged="Calendar1_SelectionChanged">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                        Height="8pt" />
                    <DayStyle BackColor="#CCCCCC" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                        Font-Size="12pt" ForeColor="White" Height="12pt" />
                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                </asp:Calendar>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtd1" ErrorMessage="Pick-Up Date Missing" 
                    style="font-family: 'Berlin Sans FB'; font-size: medium; color: #FF0000"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtd1" runat="server" Enabled="False" Height="32px" 
                    ToolTip="DATE" Width="69px" CssClass="style14"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtm1" runat="server" Enabled="False" Height="32px" 
                    ToolTip="MONTH" Width="69px" CssClass="style14"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txty1" runat="server" Enabled="False" Height="32px" 
                    ToolTip="YEAR" Width="104px" CssClass="style14"></asp:TextBox>
            &nbsp;<asp:CompareValidator ID="cvday0" runat="server" ControlToCompare="txtd3" 
                    ControlToValidate="txtd1" CssClass="style20" 
                    ErrorMessage="Sorry, We Rent Cars, Not Time Machines..." 
                    Operator="GreaterThanEqual" 
                    style="font-family: 'HP Simplified'; color: #FF0000; font-size: small"></asp:CompareValidator>
&nbsp;<asp:CompareValidator ID="cvmonth0" runat="server" ControlToCompare="txtm3" 
                    ControlToValidate="txtm1" CssClass="style20" 
                    ErrorMessage="Sorry, We Rent Cars, Not Time Machines..." 
                    Operator="GreaterThanEqual" 
                    style="font-family: 'HP Simplified'; color: #FF0000; font-size: small"></asp:CompareValidator>
&nbsp;<asp:CompareValidator ID="cvyear0" runat="server" ControlToCompare="txty3" 
                    ControlToValidate="txty1" CssClass="style20" 
                    ErrorMessage="Sorry, We Rent Cars, Not Time Machines..." 
                    Operator="GreaterThanEqual" 
                    style="font-family: 'HP Simplified'; color: #FF0000; font-size: small"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtd3" runat="server" Enabled="False" Height="32px" 
                    ToolTip="DATE" Width="69px" CssClass="style14" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtm3" runat="server" Enabled="False" Height="32px" 
                    ToolTip="MONTH" Width="69px" CssClass="style14" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txty3" runat="server" Enabled="False" Height="32px" 
                    ToolTip="YEAR" Width="104px" CssClass="style14" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblCarCat0" runat="server" 
                    style="color: #0066FF; font-size: large; font-weight: 700" 
                    Text="PICK-UP TIME :" CssClass="style14"></asp:Label>
                <span class="style19">*</span><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlh1" runat="server" CssClass="style12" 
                    Height="48px" Width="79px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>00</asp:ListItem>
                    <asp:ListItem>01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>06</asp:ListItem>
                    <asp:ListItem>07</asp:ListItem>
                    <asp:ListItem>08</asp:ListItem>
                    <asp:ListItem>09</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlm1" runat="server" CssClass="style12" 
                    Height="48px" Width="80px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>00</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ddlh1" ErrorMessage="Hour(s) Missing" 
                    style="font-family: 'Berlin Sans FB'; font-size: medium; color: #FF0000"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="ddlm1" ErrorMessage="Minute(s) Missing" 
                    style="font-family: 'Berlin Sans FB'; font-size: medium; color: #FF0000"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblmsg0" runat="server" 
                    style="color: #FF0000; font-size: small; font-weight: 700" 
                    CssClass="style14"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblCarCat1" runat="server" 
                    style="color: #0066FF; font-size: large; font-weight: 700" 
                    Text="PICK-UP LOCATION :" CssClass="style14"></asp:Label>
                <span class="style19">*</span><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtLocation" runat="server" Height="31px" Width="271px" 
                    placeholder="Insert Your Pickup Location" ToolTip ="PickUp Location" 
                    CssClass="style14" MaxLength="100"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtLocation" ErrorMessage="Pick-Up Location Missing" 
                    style="font-family: 'Berlin Sans FB'; font-size: medium; color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13" colspan="20">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblCarCat2" runat="server" 
                    style="color: #0066FF; font-size: large; font-weight: 700" 
                    Text="DROP-OFF DATE :" CssClass="style14"></asp:Label>
                <span class="style19">*</span></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Calendar ID="Calendar2" runat="server" BackColor="White" 
                    BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" 
                    Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" 
                    ShowGridLines="True" ToolTip="DROP-OFF DATE CALENDER" Width="330px" 
                    style="font-family: 'HP Simplified'; font-size: medium" 
                    onselectionchanged="Calendar2_SelectionChanged" SelectedDate="2016-01-12">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                        Height="8pt" />
                    <DayStyle BackColor="#CCCCCC" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                        Font-Size="12pt" ForeColor="White" Height="12pt" />
                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                </asp:Calendar>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtd2" ErrorMessage="Drop-Off Date Missing" 
                    style="font-family: 'Berlin Sans FB'; font-size: medium; color: #FF0000"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtd2" runat="server" Enabled="False" Height="32px" 
                    ToolTip="DATE" Width="69px" CssClass="style14"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtm2" runat="server" Enabled="False" Height="32px" 
                    ToolTip="MONTH" Width="69px" CssClass="style14"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txty2" runat="server" Enabled="False" Height="32px" 
                    ToolTip="YEAR" Width="104px" CssClass="style14"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID="cvday" runat="server" ControlToCompare="txtd1" 
                    ControlToValidate="txtd2" ErrorMessage="Invalid Day" 
                    Operator="GreaterThanEqual" 
                    style="font-family: 'HP Simplified'; color: #FF0000; font-size: small" 
                    CssClass="style20"></asp:CompareValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID="cvmonth" runat="server" ControlToCompare="txtm1" 
                    ControlToValidate="txtm2" ErrorMessage="Invalid Month" 
                    Operator="GreaterThanEqual" 
                    style="font-family: 'HP Simplified'; color: #FF0000; font-size: small" 
                    CssClass="style20"></asp:CompareValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID="cvyear" runat="server" ControlToCompare="txty1" 
                    ControlToValidate="txty2" ErrorMessage="Invalid Year" 
                    Operator="GreaterThanEqual" 
                    style="font-family: 'HP Simplified'; color: #FF0000; font-size: small" 
                    CssClass="style20"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblCarCat3" runat="server" 
                    style="color: #0066FF; font-size: large; font-weight: 700" 
                    Text="DROP-OFF TIME :" CssClass="style14"></asp:Label>
                <span class="style19">*</span><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlh2" runat="server" CssClass="style12" 
                    Height="48px" Width="79px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>00</asp:ListItem>
                    <asp:ListItem>01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>06</asp:ListItem>
                    <asp:ListItem>07</asp:ListItem>
                    <asp:ListItem>08</asp:ListItem>
                    <asp:ListItem>09</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlm2" runat="server" CssClass="style12" 
                    Height="48px" Width="80px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>00</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="ddlh2" ErrorMessage="Hour(s) Missing" 
                    style="font-family: 'Berlin Sans FB'; font-size: medium; color: #FF0000"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="ddlm2" ErrorMessage="Minute(s) Missing" 
                    style="font-family: 'Berlin Sans FB'; font-size: medium; color: #FF0000"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;
                <asp:Label ID="lblmsg" runat="server" 
                    style="color: #FF0000; font-size: small; font-weight: 700" 
                    CssClass="style14"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="20">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnLoginUser" runat="server" BackColor="Black" 
                    BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="5px" Height="59px" 
                    style="color: #FFFFFF; font-family: 'Berlin Sans FB'; font-weight: 700" 
                    Text="PROCEED" Width="189px" onclick="btnLoginUser_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="20">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

