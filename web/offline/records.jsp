<%-- 
    Document   : records
    Created on : Aug 9, 2019, 11:01:24 AM
    Author     : Starixc
--%>

<%@page import="org.apache.tomcat.util.http.Cookies"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.Cookie"%>
<!DOCTYPE html>
<head><style id="stndz-style"></style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Lime List Management System</title>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="assets/DT-Tables/js/jquery-3.3.1.min.js" ></script>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link href="assets/bootstrap/css/bootstrap-glyphicons.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/bootstrap/maps/glyphicons-fontawesome.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/footable.bootstrap.css">
    <link rel="stylesheet" href="css/select2.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-formhelpers.min.css">
    <link rel="stylesheet" href="assets/calender/lib/jquery-ui.min.css">
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link href="assets/offcanvas.css" rel="stylesheet">
    <style>
        .toggleDisplay {
            display: none;
        }
        .toggleDisplay.in {
            display: table-cell;
        }
    </style>
</head>

<body class="bg-light" onload="">
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
        <a class="navbar-brand mr-auto mr-lg-0" href="#">Lime List Management System</a>
        <button class="navbar-toggler p-0 border-0" type="button" data-toggle="offcanvas">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Dashboard <span class="sr-only">(current)</span></a>
                </li>

                <!-- <li class="nav-item">
                     <a class="nav-link" href="#">Notifications</a>
                 </li>
                -->

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="nav-item">
                    <a class="nav-link" href="#">Welcome :<i class="glyphicon glyphicon-user"></i>User your ID:user</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" title="Help" data-toggle="modal" href="#help">
                        <i class="glyphicon glyphicon-question-sign"></i>
                        Help
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../logout.jsp">
                        <i class="glyphicon glyphicon-lock"></i>
                        Logout
                    </a>
                </li>
            </ul>

        </div>
    </nav>

    <div class="nav-scroller bg-default box-shadow">
        <nav class="nav nav-underline">
            <a class="nav-link active" href="#">Dashboard</a>
            <a class="nav-link" href="index.jsp">Maternal/ART</a>
            <!--  <a class="nav-link" href="#">
                  Friends
                  <span class="badge badge-pill bg-light align-text-bottom">27</span>
              </a>
              <a class="nav-link" href="#">Explore</a>
              <a class="nav-link" href="#">Suggestions</a>-->

        </nav>
    </div>

    <main role="main"  >
        <div class="row p-3 mt-2">
            <label class="col-sm-2"></label>
            <a class='btn btn-success col-sm-3' style="text-align: center;" href='https://hsdsacluster2.fhi360.org'>Dashboards Home</a>
            <label class="col-sm-2"></label>
            <a class='btn btn-success col-sm-3' style="text-align: center;" href='aca_mca_reports.jsp'>Generate Reports</a>
            <label class="col-sm-2"></label>
        </div>

        <div class="p-3 my-3  bg-white rounded box-shadow">

            <div class="lh-100 text-center ">
                <h5 class="mb-0 text-primary lh-100 ">Lime List Management System</h5>

            </div>
        </div>
        <div class="row p-1 m-2 offset-1">

            <a href="#" id='refreshpage' class="btn btn-danger col-md-6">
                <i class="glyphicon glyphicon-refresh"></i>
                <br> Refresh
            </a>
            <a class="btn btn-danger col-md-6" title="Help" data-toggle="modal" href="#help">
                <i class="glyphicon glyphicon-question-sign"></i>
                <br> Help
            </a>  
        </div>


        <div class="my-1 mb-5 p-2 bg-white rounded box-shadow">
            <section id="tabs" class="project-tab">
                <div class="container1">
                    <div class="row">

                        <div class="col-md-12">

                            <div class="panel " id="nav-records">

                                <h6 class="border-bottom border-gray pb-2 mb-0 mt-2"> Records</h6>
                                <div class="text-muted pl-5 pt-3 bg-light">

                                    <div class="row table-responsive-lg">

                                        <table  id="TableResults" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                            <thead>
                                                <tr>
                                                    <td >SN#</td>
                                                    <td id="click-me">County</td>
                                                    <td class="toggleDisplay">Sub County</td> 
                                                    <td class="toggleDisplay">Ward</td>
                                                    <td>Facility</td>
                                                    <td class="toggleDisplay">MFL Code</td>
                                                    <td>Clients Name</td>
                                                    <td class="toggleDisplay">Patient CCC Number (MFL+ XXXXX)</td>
                                                    <td class="toggleDisplay">Gender (F/M)</td>
                                                    <td>Phone No</td>
                                                    <td>Physical Address</td>
                                                    <td class="toggleDisplay">Date of Birth</td>
                                                    <td class="toggleDisplay">Unique identifier</td>
                                                    <td class="toggleDisplay">Unique_ID_Duplicates</td>
                                                    <td>Age</td>
                                                    <td class="toggleDisplay">Age bracket</td>
                                                    <td class="toggleDisplay">Date confirmed HIVPositive(dd/mm/yyyy)</td>
                                                    <td>Enrollment date(yyyy/dd/mm)</td>
                                                    <td>ART start date(dd/mm/yyyy)</td>
                                                    <td>Expected return date (TCA)(dd/mm/yyyy)</td>
                                                    <td>Attempt Date</td>
                                                    <td>Who attempted Contact</td> 
                                                    <td>Phone call</td>
                                                    <td>Tracing Outcome</td> 
                                                    <td>Status of not-reached</td>
                                                    <td>Date resumed treatment</td>
                                                    <td>Comments</td> 
                                                    <td>Action</td>
                                                </tr>
                                            </thead>

                                            <tfoot>

                                            </tfoot>

                                            <tbody>

                                            </tbody>
                                        </table>

                                    </div>

                                </div>

                            </div>


                        </div>

                    </div>
                </div>
            </section>


        </div>


    </main>
    <footer class="text-center m-5"> &copy; AphiaPlus USAID </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="pouchdb-7.0.0.min.js"></script>
    <script src="pouchdb.find.min.js"></script>

    <script language="JavaScript" src="assets/DT-Tables/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script language="JavaScript" src="assets/DT-Tables/js/dataTables.bootstrap.js" type="text/javascript"></script>
    <script language="JavaScript" src="assets/DT-Tables/js/dataTables.fixedHeader.min.js" type="text/javascript"></script>
    <script language="JavaScript" src="assets/DT-Tables/js/dataTables.responsive.js" type="text/javascript"></script>
    <script language="JavaScript" src="assets/DT-Tables/js/responsive.bootstrap.js" type="text/javascript"></script>


    <link rel="stylesheet" type="text/css" href="assets/DT-Tables/css/dataTables.bootstrap.css">
    <link rel="stylesheet" type="text/css" href="assets/DT-Tables/css/fixedHeader.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/DT-Tables/css/responsive.bootstrap.css">
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="assets/bootstrap/js/bootstrap.min.js" ></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/select2.min.js"></script>
    <script src="js/additional/additional.js"></script>
    <script src="js/footable.js"></script>
    <script src="assets/popper.min.js"></script>
    <script src="assets/offcanvas.js"></script>
    <script src="assets/bootstrap/js/bootstrap-formhelpers.js"></script>
    <script src="assets/calender/lib/jquery-ui.min.js"></script>
    <script src="js/form_1.js"></script>
    <script src="js/app.js"></script>
    <script src="js/facility.js"></script>
    <script src="js/datepicker.js"></script>

    <%/**
         * } else { response.sendRedirect("login.jsp"); }*
         */
    %>
    <script src="js/app.js"></script>
    <script>
        $(document).ready(function () {
            $('#TableResults').dataTable({
                    responsive: true
                } );

            $("[data-toggle=tooltip]").tooltip();
            $("#click-me").click(function () {
                $(".table .toggleDisplay").toggleClass("in");
            });
        });

    </script>
</body>
</html>