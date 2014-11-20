<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Artikel_beheer.aspx.cs" Inherits="Schelderomolen.Artikel_beheer" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
</head>
<body>
    <form id="form1" runat="server"  >
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
        <div>
            <div id="wrapper">
                <div id="header">
                    <asp:Image ID="imageMolen"  ImageUrl="~/images/schelderomolen.jpg" runat="server" Height="250px" Width="942px" />
                </div>
                <div id="artikellijst">
                    <asp:GridView ID="gridViewArtikels" runat="server" AllowPaging="True" OnRowCommand="gridViewArtikels_RowCommand" 
                        OnRowDeleting="gridViewArtikels_RowDeleting" OnRowUpdating="gridViewArtikels_RowUpdating" 
                        OnRowEditing="gridViewArtikels_RowEditing" OnPageIndexChanging="gridViewArtikels_PageIndexChanging">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:ButtonField CommandName="Create" Text="Nieuw"  />
                            <asp:ButtonField CommandName="Update" Text="Aanpassen" />
                            <asp:ButtonField CommandName="Delete" Text="Verwijderen" />
                        </Columns>
                    </asp:GridView>

                </div>
                <br />
                <div id="detail">
                    <asp:Panel ID="Details" Visible="false" runat="server" Width="351px">
                    Nr&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; <asp:TextBox ID="textBoxNr" runat="server" Text="" Width="30px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"  ControlToValidate="textBoxNr"></asp:RequiredFieldValidator>
                    <asp:FilteredTextBoxExtender ID="textBoxNr_FilteredTextBoxExtender" runat="server" TargetControlID="textBoxNr"  FilterType="Numbers">
                    </asp:FilteredTextBoxExtender>
                    <br /><br />
                    Soort : <asp:TextBox ID="textBoxSoort" runat="server" Text="" Width="259px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="textBoxSoort"></asp:RequiredFieldValidator><br />
                    <br />
                    Prijs&nbsp;&nbsp; :<asp:TextBox ID="textBoxPrijs" runat="server" Text="" Width="29px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="textBoxPrijs"></asp:RequiredFieldValidator>
                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="textBoxPrijs" FilterType="Custom" ValidChars=",0123456789"></asp:FilteredTextBoxExtender><br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="buttonOK" runat="server" Text="OK" OnClick="buttonOK_Click" Width="259px"  />           
                    <br /><br />
                    <asp:Label ID="labelBewerking" runat="server" Text="" Visible="false"></asp:Label><asp:Label ID="labelRowIndex" runat="server" Text="" Visible="false"></asp:Label>
                    </asp:Panel>
                </div>
                <br /><br />
                <div id="footer">&copy;&nbsp;E.S. 2014</div>
            </div>
        </div>
    </form>
</body>
</html>
