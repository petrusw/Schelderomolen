﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ScheldeRoMolen.Master" AutoEventWireup="true" CodeBehind="Bestel.aspx.cs" Inherits="ScheldeRoMolen2.Bestel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
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
                             
                                 <h3>Afgehaald door : 
                             
                                 <asp:TextBox ID="TextBoxNaam" runat="server"></asp:TextBox>
                                 
                                     <asp:Label ID="LabelReqFieldNaam" runat="server"  ></asp:Label>

                               
                             </h3>
                            
                                <h3 class="left">Email : 

                                <asp:TextBox   ID="TextBoxEmail" runat="server" ></asp:TextBox>
                                
                                    <asp:Label   ID="LabelReqFieldEmail" runat="server" ></asp:Label>
                                 </h3>
                                
                            
                           
                            
                               
                                 <h3> Tel/Gsm:    
                                 <asp:TextBox ID="TextBoxTel" runat="server"></asp:TextBox>
                                 
                                    <asp:Label ID="LabelReqFieldTel" runat="server" ></asp:Label>
                                 </h3>
                               
                               
                             
                            
                                
                             
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
