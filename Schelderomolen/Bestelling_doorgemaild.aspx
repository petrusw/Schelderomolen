<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bestelling_doorgemaild.aspx.cs" Inherits="Schelderomolen.Bestelling_doorgemaild" %>

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
        #bestelling {
            margin-left:120px;
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
    <title>Einde bestelling</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="wrapper">
                <div id="header">
                    <asp:Image ID="imageMolen"  ImageUrl="~/images/schelderomolen.jpg" runat="server" Height="250px" Width="942px" />
                </div>
                <div id="bestelling">
                <h3>Uw bestelling is doorgestuurd naar de Schelderomolen !</h3>
                <br />
                <h3>Een kopie van de bestelling is ook naar uw ingevulde emailadres opgestuurd.</h3>
                </div>
                <br />
               <div id="footer">&copy;&nbsp;E.S. 2014</div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
