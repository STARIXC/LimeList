<%-- 
    Document   : home
    Created on : Jun 7, 2019, 1:04:06 PM
    Author     : starixc
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
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/DT-Tables/css/dataTables.bootstrap4.min.css">
    <link href="assets/DT-Tables/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/bootstrap/css/bootstrap-glyphicons.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/bootstrap/maps/glyphicons-fontawesome.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/footable.bootstrap.css">
    <link rel="stylesheet" href="css/select2.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-formhelpers.min.css">
    <link rel="stylesheet" href="assets/calender/lib/jquery-ui.min.css">
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link href="assets/offcanvas.css" rel="stylesheet">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script type="text/javascript" src="assets/DT-Tables/js/jquery-3.3.1.min.js"></script>
    <script src="assets/DT-Tables/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="assets/DT-Tables/js/dataTables.bootstrap4.min.js" type="text/javascript"></script>
    <script src="assets/DT-Tables/js/dataTables.responsive.min.js" type="text/javascript"></script>
    <script src="assets/DT-Tables/js/responsive.bootstrap4.min.js" type="text/javascript"></script>

</head>
<script>
    $(document).ready(function () {
        $('#example').dataTable();
    });
</script>
<body class="bg-light" onload="">
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
        <a class="navbar-brand mr-auto mr-lg-0" href="#">LTFU Management System</a>
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
            <!--  <a class="nav-link" href="index.jsp">Maternal/ART</a>
        <a class="nav-link" href="#">
                Friends
                <span class="badge badge-pill bg-light align-text-bottom">27</span>
            </a>
            <a class="nav-link" href="#">Explore</a>
            <a class="nav-link" href="#">Suggestions</a>-->

        </nav>
    </div>

    <main role="main"  class="container-fluid">
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
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Add New</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#records" role="tab" aria-controls="records" aria-selected="false">Edit Records</a>
                </li>

            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <div class="p-3">
                        <form  id="form_data" autocomplete="off" validate method="POST" >
                            <div class="row offset-0 p-1 border border-gray bg-light">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <input type="hidden"  name ="id" id="id" value="<%=002%>" />
                                        <input type="hidden"  name ="rowid" id="rowid"  />
                                        <label for="county"><font color='red'> <b> * </b> </font> County</label>
                                        <select class="form-control"  onchange="patasubcounty()" name='county' id='county'>
                                            <option value=""> Select County</option>
                                            <option value="1" data-county="Nakuru">Nakuru</option>
                                            <option value="2" data-county="Laikipia">Laikipia</option>
                                            <option value="3" data-county="Nakuru">Narok</option>
                                            <option value="4" data-county="Narok">Baringo</option>
                                            <option value="5" data-county="Kajiado">Kajiado</option>
                                            <option value="7" data-county="Samburu">Samburu</option>
                                            <option value="8" data-county="Turkana">Turkana</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="subCounty"><font color='red'> <b> * </b> </font> Sub-County</label>
                                        <select class="form-control" onchange="patafacility()"   name='subcounty' id='subcounty' >

                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="healthFaciities"><font color='red'> <b> * </b> </font> Health Facilities</label>
                                        <select class="form-control"  name='facility' id='facility' >

                                        </select>
                                    </div>
                                </div>
                                <!-- <div class="col-md-6">
                                     <div class="form-group">
                                         <label for="uniqueIdentifier"><font color='red'> <b> * </b> </font> Unique Identifier</label>
                                         <input type="text" class="form-control" id="uniqueIdentifier" name="uniqueIdentifier" placeholder=" Enter Unique Identifier">
                                     </div>
                                 </div>-->
                            </div>
                            <!--start of second row -->
                            <div class="row offset-0 mt-2 border border-gray bg-light">

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="clientName"><font color='red'> <b> * </b> </font> Client Name</label>
                                        <input type="text" class="form-control" id="clientName" name="clientName" placeholder=" Enter Client Name">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label for="patientNumber"><font color='red'> <b> * </b> </font> Patient CCC Number(MFL-XXX) </label>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="MFL"></span>
                                            </div>
                                            <input type="text" class="form-control" id="patientNumber" name="patientNumber" >

                                        </div>

                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label for="Gender"><font color='red'> <b> * </b> </font> Sex</label>
                                        <select class="form-control" id="gender" name="gender">
                                            <option value="">Select One</option>
                                            <option value="M">Male</option>
                                            <option value="F">Female</option>
                                        </select>
                                    </div>

                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="age"><font color='red'> <b> * </b> </font> Age</label>
                                        <input type="text" class="form-control" id="age" name="age" placeholder=" Patient Age in Yrs">
                                    </div>
                                </div>

                            </div>
                            <div class="row offset-0 mt-2 border border-gray bg-light">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="phoneNumber"><font color='red'> <b> * </b> </font> Phone Number</label>
                                        <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" placeholder=" Enter Phone Number">

                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="physicalAdress"><font color='red'> <b> * </b> </font> Physical Address</label>

                                        <textarea class="form-control" id="physicalAddress" name="physicalAddress" placeholder=" Enter Physical Address" rows="3"></textarea>
                                    </div>
                                </div>
                            </div>
                            <!--  <div class="row offset-0 mt-2 border border-gray bg-light">
  
                                  
                                  <div class="col-md-6">
                                      <div class="form-group">
                                          <label for="uniqueIdDuplicates"><font color='red'> <b> * </b> </font> Unique ID_Duplicates</label>
                                          <input type="text" class="form-control" id="uniqueIdDuplicates" name="uniqueIdDuplicates" placeholder=" Enter Unique ID_Duplicates">
                                      </div>
                                  </div>
                              </div>-->
                            <div class="row offset-0 mt-2 border border-gray bg-light">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="dateConfirmed"><font color='red'> <b> * </b> </font> Date Confirmed Positive (yyyy-mm-dd)</label>
                                        <input type="text" class="form-control" id="dateConfirmed" name="dateConfirmed">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="enrollmentDate"><font color='red'> <b> * </b> </font> Enrollment Date (yyyy-mm-dd)</label>
                                        <input type="text" class="form-control" id="enrollmentDate" name="enrollmentDate">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="artStartDate"><font color='red'> <b> * </b> </font> ART Start Date (yyyy-mm-dd)</label>
                                        <input type="text" class="form-control" id="artStartDate" name="artStartDate">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="lastVisitDate"><font color='red'> <b> * </b> </font>Last Visit Date(yyyy-mm-dd)</label>
                                        <input type="text" class="form-control" id="lastVisitDate" name="lastVisitDate" placeholder=" Enter Unique Identifier">
                                    </div>
                                </div>
                                <span class="col-md-4"></span>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="expectedReturnDate"><font color='red'> <b> * </b> </font> Expected Return Date(TCA)(yyyy-mm-dd)</label>
                                        <input type="text" class="form-control" id="expectedReturnDate" name="expectedReturnDate">
                                    </div>
                                </div>
                            </div>
                            <div class="row offset-0 mt-2 border border-gray bg-light">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="attemptedDate"><font color='red'> <b> * </b> </font> Attempted Date (yyyy-mm-dd)</label>
                                        <input type="text" class="form-control" id="attemptedDate" name="attemptedDate">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="attemptedBy"><font color='red'> <b> * </b> </font> Who Made The Attempt</label>
                                        <input type="text" class="form-control" id="attemptedBy" name="attemptedBy" placeholder="Name of Person Who Made the Attempt">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="typeOfFollowUp"><font color='red'> <b> * </b> </font> Type of Follow Up</label>
                                        <select class="form-control" id="typeOfFollowUp" name="typeOfFollowUp">
                                            <option value="">Select The Type of Follow Up Used</option>
                                            <option value="Phone Call">Phone</option>
                                            <option value="Physical Tracing">Physical Tracing</option>
                                            <option value="None">None</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="tracingOutcome">Tracing Outcome</label>
                                        <select class="form-control" id="tracingOutcome" name="tracingOutcome">
                                            <option value="">Select The Tracing Out Come</option>
                                            <option value="Not Reached">Not Reached</option>
                                            <option value="Reached">Reached</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="notReachedStatus">Status of Tracing Outcome</label>
                                        <select class="form-control" id="rco-nro" name="rco-nro" onchange="disableEnable();">

                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="dateResumed">Date Resumed Treatment</label>
                                        <input type="text" class="form-control" id="dateResumed" name="dateResumed" disabled>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="comment">Comment</label>
                                        <input type="text" class="form-control" id="comment" name="comment">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="patientStatus">Patient Status</label>
                                      
                                        <select class="form-control" id="patientStatus" name="patientStatus">
                                            <option  value=''>Select the Appropriate Status</option>
                                            <option  value='Restarted on Art'>Restarted on Art</option>
                                            <option  value='Self Transfer'>Self Transfer</option>
                                            <option  value='Transfer Out'>Transfer Out</option>
                                            <option  value='Active'>Active</option>
                                            <option  value='Confirmed Dead'>Confirmed Dead</option>
                                            <option  value='Scheduled to Come'>Scheduled to Come</option>
                                            <option  value='Stopped Treatment'>Stopped Treatment</option>
                                            <option  value='Collecting Drugs from another facility'>Collecting Drugs from another facility</option>
                                            <option  value='On Transit'>On Transit</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row offset-0 mt-2 pt-3 border border-gray bg-light">
                                <div class="col-md-8">
                                    <input type="submit" class="btn btn-success btn-lg mb-2" id="save_data" name="save_data" value="Save Record"/>

                                </div>
                                <div class="col-md-8">
                                    <button type="submit" id='updatebutton' style="margin-left: 0%;display:none;" class="btn-lg btn-info active">
                                        UPDATE 
                                    </button>

                                </div>

                            </div>
                        </form>
                        <center>
                            <div id="loading" class="alert-success"></div>
                        </center>
                    </div>                
                </div>
                <div class="tab-pane fade" id="records" role="tabpanel" aria-labelledby="records-tab">
                    <div class="container-fluid">
                        <div class="table-responsive">
                            <table id="example" class="table table-bordered dt-responsive" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th>C.Name</th>
                                        <th>CCC #</th>
                                        <th>Phone</th>
                                        <th>Address</th>
                                        <th>Date C.+ve</th>
                                        <th>Enrollment DT</th>
                                        <th>ART Start DT</th>
                                        <th>Last Visit Date</th>
                                        <th>Expected R.Date</th>
                                        <th>Attempted Date</th>
                                        <th>Attempted By</th>
                                        <th>Tracing Method</th>
                                        <th>Tracing Out Come</th>
                                        <th>Status</th>
                                        <th>DT. Resumed TX</th>
                                        <th>Comment</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>

                                <tbody>

                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>C.Name</th>
                                        <th>CCC #</th>
                                        <th>Phone</th>
                                        <th>Address</th>
                                        <th>Date C.+ve</th>
                                        <th>Enrollment DT</th>
                                        <th>ART Start DT</th>
                                        <th>Last Visit Date</th>
                                        <th>Expected R.Date</th>
                                        <th>Attempted Date</th>
                                        <th>Attempted By</th>
                                        <th>Tracing Method</th>
                                        <th>Tracing Out Come</th>
                                        <th>Status</th>
                                        <th>DT. Resumed TX</th>
                                        <th>Comment</th>
                                        <th>Action</th>
                                    </tr>
                                </tfoot>

                            </table>
                        </div>
                        <div class="row offset-0 mt-2 pt-3 border border-gray bg-light">
                            <div class="col-md-8">
                                <input type="submit" class="btn btn-success btn-lg mb-2" id="button-sync" name="button-sync" value="Sync"/>

                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>


    </main>
    <footer class="text-center m-5"> &copy; AphiaPlus USAID </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="pouchdb-7.0.0.min.js"></script>
    <script src="pouchdb.find.min.js"></script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="assets/bootstrap/js/bootstrap.min.js" ></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/select2.min.js"></script>
    <script src="js/additional/additional.js"></script>
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
</body>
</html>