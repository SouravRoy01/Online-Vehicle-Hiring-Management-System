<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHome.master" AutoEventWireup="true" CodeFile="OurCars.aspx.cs" Inherits="OurCars" %>

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
        .style12
        {
            font-size: large;
            color: #0066FF;
        }
        .style14
        {
            text-align: center;
            font-family: "HP Simplified";
            font-size: xx-large;
            color: #FF0000;
            text-decoration: underline;
        }
        .style17
        {
            font-size: x-large;
            font-weight: bold;
        }
        .style21
        {
            font-size: xx-large;
            font-family: "HP Simplified";
            text-align: left;
        }
        .style22
        {
            color: #0066FF;
        }
        .style23
        {
            text-align: center;
            font-family: "HP Simplified";
            font-size: xx-large;
            color: #FF0000;
            text-decoration: underline;
            width: 625px;
        }
        .style24
        {
            width: 625px;
        }
        .style26
        {
            text-align: center;
            font-family: "HP Simplified";
            font-size: xx-large;
            color: #FF0000;
            text-decoration: underline;
        }
        .style27
        {
            font-family: "HP Simplified";
            font-size: x-large;
            font-weight: bold;
        }
        .style28
        {
            font-family: "HP Simplified";
            font-weight: bold;
        }
        .style29
        {
            color: #0066FF;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11" colspan="3">
                <span class="style10">----------------------------------------------------</span><asp:Label 
                    ID="lblLogin" runat="server" CssClass="style10" 
                    style="font-size: xx-large; font-weight: 700" Text="OUR CARS"></asp:Label>
                <span class="style10">---------------------------------------------------</span></td>
        </tr>
        <tr>
            <td class="style12" colspan="3" style="font-family: 'HP Simplified'">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ALL THE CARS YOU ARE GOING TO VIEW UNDER THIS SECTION ARE&nbsp; REGISTERED WITH US.</strong></td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23" style="border: 3px solid #000000">
                Image</td>
            <td class="style14" style="border: 3px solid #000000">
                Car Description</td>
            <td class="style26" style="border: 3px solid #000000">
                Hourly Rate</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image2" runat="server" BorderStyle="Solid" Height="307px" 
                    ImageUrl="~/image/cruze.jpg" Width="504px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> Chevrolet Cruze LTZ</span><br class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> Black</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Diesel</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">100</span>/hr</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image3" runat="server" BorderStyle="Solid" Height="311px" 
                    ImageUrl="~/image/lamborghiniaventador.jpg" Width="504px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> <span class="subtitle">Lamborghini Aventador Roadster
                </span></span>
                <br class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> Blue</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Petrol</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">400</span>/hr</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image4" runat="server" BorderStyle="Solid" Height="312px" 
                    ImageUrl="~/image/jaguar-xjseries-white-3.jpg" Width="504px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> Jaguar XJ L<span class="subtitle"> </span></span>
                <br class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> White</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Petrol</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">450</span>/hr</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image5" runat="server" BorderStyle="Solid" Height="324px" 
                    ImageUrl="~/image/2014-aston-martin-vanquish-0.jpg" Width="504px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> Aston Martin Vanquish</span><br class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> Orange</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Petrol</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">400</span>/hr</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image6" runat="server" BorderStyle="Solid" Height="312px" 
                    ImageUrl="~/image/2015-bmw-7-series-10.jpg" Width="504px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> BMW 7 Series</span><br class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> Sapphire</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Petrol</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">400</span>/hr</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image7" runat="server" BorderStyle="Solid" Height="297px" 
                    ImageUrl="~/image/Audi-RS7-white-model.jpg" Width="531px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> Aud<span class="subtitle">i RS7 SportBack </span></span>
                <br class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> White</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Petrol</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">400</span>/hr</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image8" runat="server" BorderStyle="Solid" Height="312px" 
                    ImageUrl="~/image/mercedes-benz-s-class_100427375_m.jpg" Width="504px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> Mercedes-Benz<span class="subtitle"> S-Class</span></span><br 
                    class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> Black</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Petrol</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">450</span>/hr</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image9" runat="server" BorderStyle="Solid" Height="312px" 
                    ImageUrl="~/image/elantra.jpg" Width="504px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> Hyundai Elantra<span class="subtitle"> </span></span>
                <br class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> White</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Diesel</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">200</span>/hr</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image10" runat="server" BorderStyle="Solid" Height="312px" 
                    ImageUrl="~/image/i8.jpg" Width="523px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> BMW i8</span><br class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> Black</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Petrol</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">600</span>/hr</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image11" runat="server" BorderStyle="Solid" Height="330px" 
                    ImageUrl="~/image/audi-r8-blue-and-black-wallpaper-9tavzdlp.jpg" 
                    Width="504px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> Audi R8 V10 Coupe</span><br class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> Blue</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Petrol</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">500</span>/hr</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image13" runat="server" BorderStyle="Solid" Height="339px" 
                    ImageUrl="~/image/astonmartinrapide.jpg" Width="504px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> Aston Martin Rapide</span><br class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> White</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Petrol</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">400</span>/hr</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image14" runat="server" BorderStyle="Solid" Height="339px" 
                    ImageUrl="~/image/Porsche_Cayenne_S_(92A)_–_Frontansicht,_10._Oktober_2011,_Wülfrath.jpg" 
                    Width="520px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> Porsche Cayenne</span><br class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> Black</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Petrol</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">550</span>/hr</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image15" runat="server" BorderStyle="Solid" Height="339px" 
                    ImageUrl="~/image/2015_Ford_EcoSport_(BK)_Trend_wagon_(2015-07-03)_01.jpg" 
                    Width="504px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> Ford Ecosport</span><br class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> White</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Diesel</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">250</span>/hr</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image16" runat="server" BorderStyle="Solid" Height="339px" 
                    ImageUrl="~/image/mercedes-benz-gl-class-02.jpg" Width="504px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> Mercedes-Benz GL-Class</span><br class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> Black</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Diesel</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">550</span>/hr</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image17" runat="server" BorderStyle="Solid" Height="339px" 
                    ImageUrl="~/image/audi-q7-black-sport-fernfx0gu.jpg" Width="504px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> Audi Q7</span><br class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> Black</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Petrol</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">400</span>/hr</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image18" runat="server" BorderStyle="Solid" Height="339px" 
                    ImageUrl="~/image/huracan.jpg" Width="504px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> Lamborghini Huracan</span><br class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> Ghost White</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Petrol</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">500</span>/hr</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image19" runat="server" BorderStyle="Solid" Height="339px" 
                    ImageUrl="~/image/2014-mercedes-benz-cla-09-600-001.jpg" Width="504px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> Mercedes-Benz GLA-Class</span><br class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> White</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Petrol</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">600</span>/hr</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image20" runat="server" BorderStyle="Solid" Height="339px" 
                    ImageUrl="~/image/143515.jpg" Width="504px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> Mahindra XUV-500</span><br class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> White</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Diesel</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">250</span>/hr</td>
        </tr>
        <tr>
            <td class="style24" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image21" runat="server" BorderStyle="Solid" Height="264px" 
                    ImageUrl="~/image/Tata-Winger.jpg" Width="543px" />
                <br />
                <br />
            </td>
            <td class="style17" style="border: 3px solid #000000">
                <span class="style28"><span class="style29">Name :</span></span><span 
                    class="style27"> TATA Winger</span><br class="style27" />
                <span class="style28"><span class="style29">Colour :</span></span><span 
                    class="style27"> Silver</span><br class="style27" />
                <span class="style28"><span class="style29">Fuel Type :</span></span><span 
                    class="style27"> Diesel<br />
                <span class="style28"><span class="style29">Number Of Seats :</span></span> 14</span></td>
            <td class="style21" style="border: 3px solid #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ₹<span class="style22">200</span>/hr</td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

