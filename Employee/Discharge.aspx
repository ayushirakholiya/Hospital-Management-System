﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Employee.master" AutoEventWireup="true" CodeFile="Discharge.aspx.cs" Inherits="Employee_Discharge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Add </a>
                    </li>
                    <li class="active">Discharge Patient</li>
                </ul>

            </div>

            <div class="page-content">

                <div class="page-header">
                    <h1>Dashboard
				        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            Discharge Patient
                        </small>
                    </h1>
                </div>
                <!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="col-xs-6 col-sm-6">
                            <div class="widget-box">
                                <div class="widget-header">
                                    <h4 class="widget-title">Discharge Details</h4>

                                    <div class="widget-toolbar">
                                        <a href="#" data-action="collapse">
                                            <i class="ace-icon fa fa-chevron-up"></i>
                                        </a>

                                    </div>
                                </div>

                                <div class="widget-body">
                                    <div class="widget-main">
                                        <table class="table  table-bordered table-hover">
                                            <tr>
                                                <asp:Label Text="" ID="lblMessage" runat="server" />
                                            </tr>
                                            <tr>

                                                <td>Patient Name</td>
                                                <td>
                                                    <asp:DropDownList runat="server" CssClass="form-control" ID="ddlPatienrname" OnSelectedIndexChanged="ddlPatienrname_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>

                                            <tr>

                                                <td>Room No</td>
                                                <td>
                                                    <asp:Label Text="" ID="lblRoomNo" runat="server" />
                                                </td>
                                            </tr>

                                            <tr>

                                                <td>Medical Charges</td>
                                                <td>
                                                    <asp:TextBox Text="0" ID="txtMedicalCharges" TextMode="Number" runat="server" />
                                                </td>
                                            </tr>

                                            <tr>

                                                <td>Room Charges</td>
                                                <td>
                                                    <asp:TextBox Text="0" ID="txtRoomCharges" runat="server" TextMode="Number" AutoPostBack="true" OnTextChanged="txtRoomCharges_TextChanged" />
                                                </td>
                                            </tr>
                                            <tr>

                                                <td>Total</td>
                                                <td>
                                                    <asp:Label Text="" ID="txtTotal" runat="server" />
                                                    <asp:Label Text="" ID="hidRoomNo" runat="server" />
                                                </td>
                                            </tr>

                                            <tr>
                                                <td colspan="4" align="center">
                                                    <asp:Button Text="Submit" CssClass="btn btn-success" ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" />
                                                </td>
                                            </tr>
                                        </table>


                                    </div>


                                </div>
                            </div>
                        </div>
      
                    </div>


                    <!-- /.row -->

                    <!-- PAGE CONTENT ENDS -->
                </div>
            </div>
        </div>
    </div>
</asp:Content>


