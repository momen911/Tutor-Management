﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Worksheet.aspx.cs" Inherits="Worksheet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style4
        {
            width: 97px;
        }
        .auto-style5
        {
            width: 333px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" Width="176px" />
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Download" Width="177px" />
        <br />
&nbsp;<asp:Panel ID="PanelUpDownload" runat="server">
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <table>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" runat="server" Visible="False" />
                                </td>
                                <td class="auto-style4">&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Choose Subject:
                                    <asp:DropDownList ID="DropDownListSub" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style4">&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Choose&nbsp; Grade:&nbsp;
                                    <asp:DropDownList ID="DropDownListGrade" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style4">&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Level Of Difficulty:
                                    <asp:DropDownList ID="DropDownListLOD" runat="server">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style4">&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="ButtonShow" runat="server" OnClick="ButtonShow_Click" Text="Show List for download" Visible="False" Width="171px" />
                                </td>
                                <td class="auto-style4">
                                    <asp:Button ID="ButtonUpload" runat="server" OnClick="ButtonUpload_Click" Text="Upload" Visible="False" Width="97px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <asp:GridView ID="GridViewWorksheet" runat="server" DataKeyNames="WorksheetID" OnSelectedIndexChanged="GridViewWorksheet_SelectedIndexChanged" style="margin-left: 0px">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                         <asp:HyperLink ID="HyperLink1" runat="server"
                            NavigateUrl='<%# Eval("WorksheetId", "GetFile.aspx?ID={0}") %>'
                            Text="Download"></asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField SelectText="View" ShowSelectButton="True" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <br />
        <br />
<br />
</asp:Content>

