<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ScheldeRoMolen2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Schelderomolen</title>
    <link  rel="stylesheet" type="text/css" href="Css/MainCss.css" />
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="scripts/scriptMain.js"  type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <section id="pictureMain">
        
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/schelderomolen.jpg" />
       
        
    </section>
        <section class="inline">
            <asp:ScriptManager ID="ScriptManager1" runat="server">

                
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                     <section id="section1">
                         <section class="center">
                              <h2 >Uw bestelling voor : <asp:Label  ID="LabelDatumAfhaling" runat="server" ></asp:Label></h2>
                             
                         </section>
                         <section class="center">
                             <div>
                                 <h3>Afgehaald door : </h3>
                                 <asp:TextBox ID="TextBoxNaam" runat="server"></asp:TextBox>
                                 <h3>
                                     <asp:Label ID="LabelReqFieldNaam" runat="server"  ></asp:Label>

                                 </h3>
                             </div>
                            <div>
                                <h3>Email : </h3> 
                                <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                                <h3>
                                    <asp:Label ID="LabelReqFieldEmail" runat="server" ></asp:Label>

                                </h3>
                            
                            </div>
                            
                               <div>
                                 <h3> Tel/Gsm: </h3>    
                                 <asp:TextBox ID="TextBoxTel" runat="server"></asp:TextBox>
                                 <h3>
                                    <asp:Label ID="LabelReqFieldTel" runat="server" ></asp:Label>
                                 </h3>
                               </div>
                               
                             
                            
                                
                             
                         </section>
                        <section>
                             <div class="left">
                 <div > 123</div>  

                </div>
             
                 <div class="right">
                     <div > 123</div>

                 </div>
                        </section>
               
            </section>
                </ContentTemplate>
                
            </asp:UpdatePanel>
           
           
        </section>
       
    </div>
    </form>
</body>
</html>
