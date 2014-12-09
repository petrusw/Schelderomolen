<%@ Page Title="" Language="C#" MasterPageFile="~/ScheldeRoMolen.Master" AutoEventWireup="true" CodeBehind="Bestel.aspx.cs" Inherits="ScheldeRoMolen2.Bestel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
     <section class="inline">
            <asp:ScriptManager ID="ScriptManager1" runat="server">

                </asp:ScriptManager>
            
            <asp:UpdatePanel ID="UpdatePanelKlant" runat="server">
                <ContentTemplate>
                    <asp:Panel ID="PanelKlant" runat="server">
                     <section id="section1">
                         <section class="center">
                              <h2 >Uw bestelling voor : <asp:Label  ID="LabelDatumAfhaling" runat="server" ></asp:Label></h2>
                             
                         </section>
                         <section class="center">
                             
                                 <h3 class="left">Afgehaald door : </h3>
                             <h3 class="right">
                                 <asp:TextBox ID="TextBoxNaam" runat="server"  ></asp:TextBox>
                                 
                                    <%-- <asp:Label ID="LabelReqFieldNaam" runat="server" ForeColor="Red"   ></asp:Label>--%>

                               
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorNaam"  ControlToValidate="TextBoxNaam" runat="server" Text="*" ErrorMessage="vul naam in !" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                               
                             </h3>
                            
                                <h3  class="left">Email :  </h3>
                             <h3 class="right">
                                <asp:TextBox   ID="TextBoxEmail" runat="server" ></asp:TextBox>
                                
                                  <%--  <asp:Label   ID="LabelReqFieldEmail" runat="server" ForeColor="Red" ></asp:Label>--%>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBoxEmail" ForeColor="Red" Text="*" runat="server" Display="Dynamic"></asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">*</asp:RegularExpressionValidator>
                                 </h3>
                                
                            
                           
                            
                               
                                 <h3 class="left"> Tel/Gsm:    </h3>
                             <h3 class="right">
                                 <asp:TextBox ID="TextBoxTel" runat="server"></asp:TextBox>
                                 
                                   <%-- <asp:Label ID="LabelReqFieldTel" runat="server" ForeColor="Red" ></asp:Label>--%>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorTel" ControlToValidate="textBoxTel" runat="server" Text="*" ErrorMessage="RequiredFieldValidator"  ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxTel" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d*">*</asp:RegularExpressionValidator>
                                 </h3>
                               <h3 class="left">
                                   <asp:Button ID="ButtonVolgende" runat="server" Text="Volgende" OnClick="ButtonVolgende_Click" />
                               </h3>
                             
                            
                                
                             
                         </section>
                       
               
            </section>
                        </asp:Panel>
                </ContentTemplate>
                
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="ButtonVolgende" />
                </Triggers>
                
            </asp:UpdatePanel>
            <section>
                <asp:UpdatePanel ID="UpdatePanelType" runat="server" Visible="True">
                    <ContentTemplate>
                        <asp:Panel ID="PanelType" runat="server">
                         <h3 class="center">
                             <asp:Label ID="LabelKlantInfo" runat="server"  ></asp:Label>
                             
                        </h3>
                        <h3 class="center">
                            Maak hieronder uw bestelling:
                        </h3>
                        <br />
                            <section class="center MainText" >
                        <h3 class="left30">Soort: </h3>
                          
                    <h3 class="right30">
                                                        <asp:DropDownList ID="DropDownListSoort" runat="server"></asp:DropDownList>

                        <asp:DropDownList ID="DropDownListGewigt" runat="server"></asp:DropDownList>
                    </h3>
                            </section>
                            <h3 class="center ">
                                <asp:Button ID="ButtonBestelToevoegen" runat="server" Text="voeg bestelling toe" OnClick="ButtonBestelToevoegen_Click" /><br />
                            </h3>
                       <h3 class="center">
                           <asp:Label ID="Label1bestellingen" runat="server" ></asp:Label>
                       </h3>
                          <h3 class="center">
                                <asp:Button ID="ButtonBestel" runat="server" Text="Bestel" OnClick="ButtonBestel_Click" />
                                <br />
                                 
                            </h3>  
                           
                      </asp:Panel>
                        <asp:Panel ID="PanelEindeBestelling" runat="server">
                            <h3 class="center"> <asp:Label ID="LabeleindeBestelling" runat="server"  Visible="false"></asp:Label></h3>
                           
                        </asp:Panel>
                        </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ButtonVolgende" />
                    </Triggers>
                </asp:UpdatePanel>              
           </section>
           
        </section>
</asp:Content>
