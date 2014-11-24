<%@ Page Title="" Language="C#" MasterPageFile="~/ScheldeRoMolen.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ScheldeRoMolen2._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>
