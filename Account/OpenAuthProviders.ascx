<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OpenAuthProviders.ascx.cs" Inherits="webmvc.Account.OpenAuthProviders" %>

<div id="socialLoginList">
    <h4>Utilice otro servicio para iniciar sesión.</h4>
    <hr />
    <asp:ListView runat="server" ID="providerDetails" ItemType="System.String"
        SelectMethod="GetProviderNames" ViewStateMode="Disabled">
        <ItemTemplate>
            <p>
                <button type="submit" class="btn btn-default" name="provider" value="<%#: Item %>"
                    title="Inicie sesión con su <%#: Item %> cuenta.">
                    <%#: Item %>
                </button>
            </p>
        </ItemTemplate>
        <EmptyDataTemplate>
            <div>
                
            </div>
        </EmptyDataTemplate>
    </asp:ListView>
</div>
