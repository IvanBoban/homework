<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zadaca.aspx.cs" Inherits="intdbp_zadaca3.zadaca" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 115px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Move type:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="sdsType" DataTextField="typename" DataValueField="typeID">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="moveID" DataSourceID="sdsMoves" GridLines="Horizontal">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <Columns>
                                <asp:BoundField DataField="moveID" HeaderText="moveID" ReadOnly="True" SortExpression="moveID" Visible="False" />
                                <asp:BoundField DataField="movename" HeaderText="movename" SortExpression="movename" />
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="sdsMoves" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:INTDBConnectionString %>" DeleteCommand="DELETE FROM [move] WHERE [moveID] = @original_moveID AND [movename] = @original_movename AND [movetype] = @original_movetype" InsertCommand="INSERT INTO [move] ([moveID], [movename], [movetype]) VALUES (@moveID, @movename, @movetype)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [move] WHERE ([movetype] = @movetype)" UpdateCommand="UPDATE [move] SET [movename] = @movename, [movetype] = @movetype WHERE [moveID] = @original_moveID AND [movename] = @original_movename AND [movetype] = @original_movetype">
                            <DeleteParameters>
                                <asp:Parameter Name="original_moveID" Type="Int32" />
                                <asp:Parameter Name="original_movename" Type="String" />
                                <asp:Parameter Name="original_movetype" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="moveID" Type="Int32" />
                                <asp:Parameter Name="movename" Type="String" />
                                <asp:Parameter Name="movetype" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="movetype" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="movename" Type="String" />
                                <asp:Parameter Name="movetype" Type="Int32" />
                                <asp:Parameter Name="original_moveID" Type="Int32" />
                                <asp:Parameter Name="original_movename" Type="String" />
                                <asp:Parameter Name="original_movetype" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="sdsType" runat="server" ConnectionString="<%$ ConnectionStrings:INTDBConnectionString %>" SelectCommand="SELECT * FROM [type]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
