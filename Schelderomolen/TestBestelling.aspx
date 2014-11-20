<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestBestelling.aspx.cs" Inherits="Schelderomolen.TestBestelling" %>

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
            margin-left:250px;
        }

        #artikellijst {
            margin-left:250px;
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
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"  EnableScriptGlobalization="true" EnablePartialRendering="true"></asp:ToolkitScriptManager>
    <div>
            <div id="wrapper">
                <div id="header">
                    <%--<h2>#header</h2>--%>
                    <asp:Image ID="imageMolen"  ImageUrl="~/images/schelderomolen.jpg" runat="server" Height="250px" Width="942px" />
                </div>
                <div id="detail">
                <%--<asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Always">
                    <ContentTemplate>--%>
                    <asp:Panel ID="panelBestelling" runat="server">
                        <h3>Bestelling voor :
                        <asp:Label ID="labelBestellingVoor" runat="server" Text="" CssClass="text"></asp:Label>
                        <asp:Label ID="labelNrKnop" runat="server" Text="" Visible="false"></asp:Label>
                        </h3>
                        <asp:Panel ID="leftcolumn" runat="server"></asp:Panel>
                        <asp:Panel ID="middlecolumn" runat="server"></asp:Panel>
                        <asp:Panel ID="rightcolumn" runat="server"></asp:Panel>
                    </asp:Panel>         
                </div>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="buttonOkBestel" runat="server"  Text="OK" Width="80px" OnClick="buttonOkBestel_Click" />

        <%--</ContentTemplate>
        </asp:UpdatePanel>--%>
       </div>
                <br />
               <div id="footer">&copy;&nbsp;E.S. 2014</div>
            </div>
    
    </div>
    </form>
</body>
</html>
