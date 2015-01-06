<%@ Page Title="" Language="C#" MasterPageFile="~/ScheldeRoMolen.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ScheldeRoMolen2._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
</asp:Content>
<asp:Content runat="server" ID="ContentText" ContentPlaceHolderID="index"  >
    <section   >
         <h1 class="center">Nieuws</h1>
        <br />
        <br />
        <div class="MainText">
            <hr />
            <h2 <%--class="center"--%>>Wie zijn wij</h2>
        <h3 id="indexText"  runat="server" ></h3>
            <asp:HyperLink ID="HyperLinkWieZijnWij" runat="server" NavigateUrl="~/WieZijnWij.aspx">lees meer >></asp:HyperLink>
         <hr />
            <br />
              <hr />
            <h2 <%--class="center"--%>>Eerherstel voor de artisanale boterham</h2>
        <h3 id="eertext"  runat="server" ></h3>
            <asp:HyperLink ID="HyperLinkEerherstel" runat="server" NavigateUrl="~/Eerherstel.aspx">lees meer >></asp:HyperLink>
         <hr />
            <br />

            <br />
            <br />
            <br />
        </div>
 

    </section>
</asp:Content>
