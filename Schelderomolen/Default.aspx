<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Schelderomolen.Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        * {
            padding: 0;
            margin: 0;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
        }
        .watermerk {
            color:GrayText;
            font-style:italic;
        }

        #wrapper {
            margin: 0 auto;
            width: 960px;
            height:auto;
            background-color:whitesmoke;
                
        }

        #header {
            /*color: #333;*/
            width: 942px;
            float: left;
            padding: 5px;
            border: 1px solid #ccc;
            height: 250px;
            margin: 10px 0px 5px 3px;
            /*background: #BD9C8C;*/
        }

        #detail {
            margin-left:172px;
        }

        #bestelling {
            margin-left:120px;
        }

        #leftcolumn {
            /*color: #333;
            border: 1px solid #ccc;
            background: #E7DBD5;*/
            margin: 0px 5px 5px 0px;
            padding: 10px;
            height: 220px;
            width: 400px;
            float: left;
        }

        #middlecolumn {
            float: left;
            /*color: #333;
            border: 1px solid #ccc;
            background: #F2F2E6;*/
            margin: 0px 5px 5px 0px;
            padding: 10px;
            height: 220px;
            width: 80px;
            display: inline;
        }

        #rightcolumn {
            /*color: #333;
            border: 1px solid #ccc;
            background: #E7DBD5;*/
            margin: 0px 0px 5px 0px;
            padding: 10px;
            height: 220px;
            width: 169px;
            float: left;
        }
            #rightcolumn.TextBox {
                width:10px;
            }

        #footer {
            width: 937px;
            clear: both;
            /*color: #333;
            border: 1px solid #ccc;
            background: #BD9C8C;*/
            margin: 0px 0px 10px 0px;
            padding: 10px;
        }
    </style>
    <title>Bestelling voor Schelderomolen</title>
</head>
<body>
    <form id="form1" runat="server" defaultfocus="textBoxAfgehaald">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnableScriptGlobalization="true" EnablePartialRendering="true" >
        </asp:ToolkitScriptManager>
        <div>
            <div id="wrapper">
                <div id="header">
                    <%--<h2>#header</h2>--%>
                    <asp:Image ID="imageMolen"  ImageUrl="~/images/schelderomolen.jpg" runat="server" Height="250px" Width="942px" />
                </div>
                <div id="bestelling">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
                    <ContentTemplate>
                    <h2>Uw bestelling Schelderomolen voor : <asp:Label ID="labelDatumAfhaling" runat="server" Text="" /></h2>
                    <br />
                    <h3>Afgehaald door:&nbsp;
                    <asp:TextBox ID="textBoxAfgehaald" runat="server"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="textBoxWatermarkExtenderAfgehaald" runat="server" Enabled="True" TargetControlID="textBoxAfgehaald" WatermarkCssClass="watermerk" WatermarkText="Vul je naam in">
                    </asp:TextBoxWatermarkExtender>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="textBoxAfgehaald" ForeColor="red"></asp:RequiredFieldValidator>
                    &nbsp;Email:
                    <asp:TextBox ID="textBoxEmail" runat="server"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="textBoxWatermarkExtenderEmail" runat="server" Enabled="True" TargetControlID="textBoxEmail" WatermarkCssClass="watermerk" WatermarkText="Vul je email in">
                    </asp:TextBoxWatermarkExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="*" ControlToValidate="textBoxEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regularEmail" runat="server" ErrorMessage="*" ControlToValidate="textBoxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                    &nbsp;Tel/Gsm:&nbsp;
                    <asp:TextBox ID="textBoxTel" runat="server"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="textBoxWatermarkExtenderTel" runat="server" Enabled="True" TargetControlID="textBoxTel" WatermarkCssClass="watermerk" WatermarkText="Vul je Tel/Gsm in">
                    </asp:TextBoxWatermarkExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorTelefoon" runat="server" ErrorMessage="*" ControlToValidate="textBoxTel" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;</h3>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Bestelling voor :&nbsp;&nbsp;
                    <asp:TextBox ID="textBoxPersoon1" runat="server" Width="200" Font-Bold="true"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="textBoxWatermarkExtenderPersoon1" runat="server" Enabled="True"
                        TargetControlID="textBoxPersoon1" WatermarkCssClass="watermerk" WatermarkText="Vul naam in voor wie je besteld"></asp:TextBoxWatermarkExtender>
                    &nbsp;<asp:Button ID="buttonBestel1" runat="server" Text="Bestelling ingeven" CommandArgument="1" OnClick="buttonBestel_Click" />
                    &nbsp;<asp:Label ID="labelBestel1" runat="server" Text=""></asp:Label>
                     &nbsp;€&nbsp;<asp:Label ID="labelTotaalBestelling1" runat="server" Text="0"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;<asp:TextBox ID="textBoxPersoon2" runat="server" Width="200" Font-Bold="true"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="textBoxWatermarkExtenderPersoon2" runat="server" Enabled="True" TargetControlID="textBoxPersoon2" WatermarkCssClass="watermerk" WatermarkText="Vul naam in voor wie je besteld"></asp:TextBoxWatermarkExtender>
                    &nbsp;<asp:Button ID="buttonBestel2" runat="server" Text="Bestelling ingeven" CommandArgument="2" OnClick="buttonBestel_Click" />
                    &nbsp;<asp:Label ID="labelBestel2" runat="server" Text=""></asp:Label>
                    &nbsp;€&nbsp;<asp:Label ID="labelTotaalBestelling2" runat="server" Text="0"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;<asp:TextBox ID="textBoxPersoon3" runat="server" Width="200" Font-Bold="true"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="textBoxWatermarkExtenderPersoon3" runat="server" Enabled="True" TargetControlID="textBoxPersoon3" WatermarkCssClass="watermerk" WatermarkText="Vul naam in voor wie je besteld"></asp:TextBoxWatermarkExtender>
                    &nbsp;<asp:Button ID="buttonBestel3" runat="server" Text="Bestelling ingeven" CommandArgument="3" OnClick="buttonBestel_Click" />
                    &nbsp;<asp:Label ID="labelBestel3" runat="server" Text=""></asp:Label>
                    &nbsp;€&nbsp;<asp:Label ID="labelTotaalBestelling3" runat="server" Text="0"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;<asp:TextBox ID="textBoxPersoon4" runat="server" Width="200" Font-Bold="true"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="textBoxWatermarkExtenderPersoon4" runat="server" Enabled="True" TargetControlID="textBoxPersoon4" WatermarkCssClass="watermerk" WatermarkText="Vul naam in voor wie je besteld"></asp:TextBoxWatermarkExtender>
                    &nbsp;<asp:Button ID="buttonBestel4" runat="server" Text="Bestelling ingeven" CommandArgument="4" OnClick="buttonBestel_Click" />
                    &nbsp;<asp:Label ID="labelBestel4" runat="server" Text=""></asp:Label>
                    &nbsp;€&nbsp;<asp:Label ID="labelTotaalBestelling4" runat="server" Text="0"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;<asp:TextBox ID="textBoxPersoon5" runat="server" Width="200" Font-Bold="true"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="textBoxWatermarkExtenderPersoon5" runat="server" Enabled="True" TargetControlID="textBoxPersoon5" WatermarkCssClass="watermerk" WatermarkText="Vul naam in voor wie je besteld ">
                    </asp:TextBoxWatermarkExtender>
                    &nbsp;<asp:Button ID="buttonBestel5" runat="server" Text="Bestelling ingeven" CommandArgument="5" OnClick="buttonBestel_Click" />
                    &nbsp;<asp:Label ID="labelBestel5" runat="server" Text=""></asp:Label>
                    &nbsp;€&nbsp;<asp:Label ID="labelTotaalBestelling5" runat="server" Text="0"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Totale bestelling : € <asp:Label ID="labelTotaleBestelling" runat="server" Text="0"></asp:Label></h3>
                    
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="buttonBestellingDoormailen" runat="server" Text="Bestelling doormailen" OnClick="buttonBestellingDoormailen_Click" Enabled="False" Width="367px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="labelMailVerstuurd" runat="server" Text="Uw bestelling werd verstuurd" Font-Bold="true" Font-Size="Large" Visible="false"></asp:Label>
                    <br />
                    <br />
                  </ContentTemplate>
                </asp:UpdatePanel>
                </div>
                <div id="detail">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Always">
                    <ContentTemplate>
                    <asp:Panel ID="panelBestelling" runat="server" Visible="false">
                        <h3>Bestelling voor :
                        <asp:Label ID="labelBestellingVoor" runat="server" Text="" CssClass="text"></asp:Label>
                        <asp:Label ID="labelNrKnop" runat="server" Text="" Visible="false"></asp:Label>
                        </h3>
                        <div id="leftcolumn">
                            <asp:CheckBox ID="checkBoxNummerSoort0" runat="server" AutoPostBack="True"  Text="" Width="300" Height="19" OnCheckedChanged="checkBoxNummerSoort0_CheckedChanged"/><br />
                            <asp:CheckBox ID="checkBoxNummerSoort1" runat="server" AutoPostBack="True"  Text="" Width="300" Height="19" OnCheckedChanged="checkBoxNummerSoort1_CheckedChanged"/><br />
                            <asp:CheckBox ID="checkBoxNummerSoort2" runat="server" AutoPostBack="True"  Text="" Width="300" Height="19" OnCheckedChanged="checkBoxNummerSoort2_CheckedChanged"/><br />
                            <asp:CheckBox ID="checkBoxNummerSoort3" runat="server" AutoPostBack="True"  Text="" Width="300" Height="19" OnCheckedChanged="checkBoxNummerSoort3_CheckedChanged"/><br />
                            <asp:CheckBox ID="checkBoxNummerSoort4" runat="server" AutoPostBack="True"  Text="" Width="300" Height="19" OnCheckedChanged="checkBoxNummerSoort4_CheckedChanged"/><br />
                            <asp:CheckBox ID="checkBoxNummerSoort5" runat="server" AutoPostBack="True"  Text="" Width="300" Height="19" OnCheckedChanged="checkBoxNummerSoort5_CheckedChanged"/><br />
                            <asp:CheckBox ID="checkBoxNummerSoort6" runat="server" AutoPostBack="True"  Text="" Width="300" Height="19" OnCheckedChanged="checkBoxNummerSoort6_CheckedChanged"/><br />
                            <asp:CheckBox ID="checkBoxNummerSoort7" runat="server" AutoPostBack="True"  Text="" Width="300" Height="19" OnCheckedChanged="checkBoxNummerSoort7_CheckedChanged"/><br />
                            <asp:CheckBox ID="checkBoxNummerSoort8" runat="server" AutoPostBack="True"  Text="" Width="300" Height="19" OnCheckedChanged="checkBoxNummerSoort8_CheckedChanged"/><br />
                            <asp:CheckBox ID="checkBoxNummerSoort9" runat="server" AutoPostBack="True"  Text="" Width="300" Height="19" OnCheckedChanged="checkBoxNummerSoort9_CheckedChanged"/><br />
                        </div>
                        <div id="middlecolumn">
                            <asp:Label ID="labelPrijs0" runat="server" Text="" Height="19"></asp:Label>€<br />
                            <asp:Label ID="labelPrijs1" runat="server" Text="" Height="19"></asp:Label>€<br />
                            <asp:Label ID="labelPrijs2" runat="server" Text="" Height="19"></asp:Label>€<br />
                            <asp:Label ID="labelPrijs3" runat="server" Text="" Height="19"></asp:Label>€<br />
                            <asp:Label ID="labelPrijs4" runat="server" Text="" Height="19"></asp:Label>€<br />
                            <asp:Label ID="labelPrijs5" runat="server" Text="" Height="19"></asp:Label>€<br />
                            <asp:Label ID="labelPrijs6" runat="server" Text="" Height="19"></asp:Label>€<br />
                            <asp:Label ID="labelPrijs7" runat="server" Text="" Height="19"></asp:Label>€<br />
                            <asp:Label ID="labelPrijs8" runat="server" Text="" Height="19"></asp:Label>€<br />
                            <asp:Label ID="labelPrijs9" runat="server" Text="" Height="19"></asp:Label>€<br />
                        </div>
                        <div id="rightcolumn">
                            Bestelhoeveelheid/Kg&nbsp;<asp:TextBox ID="textBoxHoev0" runat="server" AutoPostBack="True" Text="" Height="15" Width="20px"></asp:TextBox>                            
                            <asp:FilteredTextBoxExtender ID="textBoxHoev0_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="textBoxHoev0"></asp:FilteredTextBoxExtender>
                            <br />
                            Bestelhoeveelheid/Kg&nbsp;<asp:TextBox ID="textBoxHoev1" runat="server" AutoPostBack="True" Text=""  Height="15" Width="20px"></asp:TextBox>                           
                            <asp:FilteredTextBoxExtender ID="textBoxHoev1_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="textBoxHoev1"></asp:FilteredTextBoxExtender>
                            <br />
                            Bestelhoeveelheid/Kg&nbsp;<asp:TextBox ID="textBoxHoev2" runat="server" AutoPostBack="True" Text="" Height="15" Width="20px"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="textBoxHoev2_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="textBoxHoev2"></asp:FilteredTextBoxExtender>
                            <br />
                            Bestelhoeveelheid/Kg&nbsp;<asp:TextBox ID="textBoxHoev3" runat="server" AutoPostBack="True" Text="" Height="15" Width="20px"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="textBoxHoev3_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="textBoxHoev3"></asp:FilteredTextBoxExtender>
                            <br />
                            Bestelhoeveelheid/Kg&nbsp;<asp:TextBox ID="textBoxHoev4" runat="server" AutoPostBack="True" Text="" Height="15" Width="20px"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="textBoxHoev4_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="textBoxHoev4"></asp:FilteredTextBoxExtender>
                            <br />
                            Bestelhoeveelheid/Kg&nbsp;<asp:TextBox ID="textBoxHoev5" runat="server" AutoPostBack="True" Text="" Height="15" Width="20px"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="textBoxHoev5_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="textBoxHoev5"></asp:FilteredTextBoxExtender>
                            <br />
                            Bestelhoeveelheid/Kg&nbsp;<asp:TextBox ID="textBoxHoev6" runat="server" AutoPostBack="True" Text="" Height="15" Width="20px"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="textBoxHoev6_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="textBoxHoev6"></asp:FilteredTextBoxExtender>
                            <br />
                            Bestelhoeveelheid/Kg&nbsp;<asp:TextBox ID="textBoxHoev7" runat="server" AutoPostBack="True" Text="" Height="15" Width="20px"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="textBoxHoev7_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="textBoxHoev7"></asp:FilteredTextBoxExtender>
                            <br />
                            Bestelhoeveelheid/Kg&nbsp;<asp:TextBox ID="textBoxHoev8" runat="server" AutoPostBack="True" Text="" Height="15" Width="20px"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="textBoxHoev8_FilteredTextBoxExtender1" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="textBoxHoev8"></asp:FilteredTextBoxExtender>
                            <br />
                            Bestelhoeveelheid/Kg&nbsp;<asp:TextBox ID="textBoxHoev9" runat="server" AutoPostBack="True" Text="" Height="15" Width="20px"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="textBoxHoev9_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="textBoxHoev9"></asp:FilteredTextBoxExtender>
                            <br />
                        </div>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="buttonOkBestel" runat="server"  Text="OK" Width="80px" OnClick="buttonOkBestel_Click" />
        </asp:Panel>
        </ContentTemplate>
        </asp:UpdatePanel>
       </div>
                <br />
               <div id="footer">&copy;&nbsp;E.S. 2014</div>
            </div>
        </div>
    </form>
</body>
</html>
