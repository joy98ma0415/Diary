<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="write.aspx.cs" Inherits="Diary.write" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 916px;
        }
        .auto-style5 {
            width: 626px;
        }
        .auto-style6 {
            width: 334px;
            height: 281px;
        }
        .auto-style7 {
            width: 191px;
        }
        .auto-style8 {
            width: 191px;
            height: 60px;
        }
        .auto-style9 {
            width: 626px;
            height: 60px;
        }
        .auto-style10 {
            width: 334px;
            height: 60px;
        }
        .auto-style11 {
            width: 191px;
            height: 281px;
        }
        .auto-style12 {
            width: 626px;
            height: 281px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content" style="text-align: left">
        <h3 style="width: 600px; text-align: center;">添加日記</h3>

        <table style="text-align: left;" class="auto-style4">
            <tr>
                <td class="auto-style8">標題：</td>
                <td class="auto-style9">
                    <asp:TextBox ID="titleBx" runat="server" Width="450px" Height="34px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*标题不能为空" ControlToValidate="titleBx">*標題不能為空</asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style11">日記內容：
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="contentBx" runat="server" TextMode="MultiLine" Height="260px" Width="585px" BackColor="Fuchsia"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*日记内容不能为空" ControlToValidate="contentBx">*日記內容不能為空</asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style5">
                    <table>
                        <tr>
                            <td style="width: 225px; text-align: center;">
                                <asp:Button ID="submit" runat="server" Text="新增日記" OnClick="submit_Click" /></td>
                            <td style="width: 225px; text-align: center;">
                                <asp:Button ID="reset" runat="server" Text="重新填寫" OnClick="reset_Click" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>