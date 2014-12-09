<%@ Page Title="" Language="C#" MasterPageFile="~/ScheldeRoMolen.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ScheldeRoMolen2.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <asp:ScriptManager ID="ScriptManagerContact" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
        <ContentTemplate >
            <div id="MainContact"  >
        
            <asp:Panel  ID="Panelcontact" runat="server" Width="100%" Height="50%"    >
                <h1 class="center">Contact</h1>
                <br />
                <h3 class="center"  >
                    Email: <asp:TextBox ID="TextBoxContactEmail" runat="server" Width="65%"></asp:TextBox>
                    <br /></h3>
                    <asp:TextBox ID="TextBoxContactForm" runat="server" Width="100%" Height="100%" TextMode="MultiLine" Rows="20"></asp:TextBox>
                
                <br />
                <h3 class="center">
                    <asp:Button ID="ButtonVerzend" runat="server" Text="Verzend" OnClick="ButtonVerzend_Click" />
                </h3>
                <br />
                <br /><br /><br />
            </asp:Panel>
                
                      <asp:Panel ID="PanelContactPreview" runat="server">
                          <h3 class="center">
                               <asp:Label ID="LabelContactPreview" runat="server" ></asp:Label>
                          </h3>
                         
                      </asp:Panel>
                
              
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ButtonVerzend" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
