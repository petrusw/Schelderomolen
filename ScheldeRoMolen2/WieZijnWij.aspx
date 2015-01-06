<%@ Page Title="" Language="C#" MasterPageFile="~/ScheldeRoMolen.Master" AutoEventWireup="true" CodeBehind="WieZijnWij.aspx.cs" Inherits="ScheldeRoMolen2.WieZijnWij" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
      <section   >
         <h1 class="center">Wie zijn wij</h1>
          
          <br />
        <br />
        <div class="MainText">
            <asp:HyperLink ID="HyperLinkBack" runat="server" NavigateUrl="~/Default.aspx"><< Terug</asp:HyperLink>
        <h3 id="indexText"  runat="server" ></h3>

        </div>
    </section>
</asp:Content>
