<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewSwitcher.ascx.cs" Inherits="webmvc.ViewSwitcher" %>
<div id="viewSwitcher">
    <%: CurrentView %> default | <a href="<%: SwitchUrl %>" data-ajax="false">Switch to <%: AlternateView %></a>
</div>