<%-- 
    Document   : index
    Created on : Aug 7, 2019, 9:52:13 AM
    Author     : HSDSA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="chrome" />
        <title>GRM Logistics App</title>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/DT-Tables/css/dataTables.bootstrap4.min.css">
        <link href="assets/DT-Tables/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />

        <script type="text/javascript" src="assets/DT-Tables/js/jquery-3.3.1.min.js"></script>
        <script src="assets/DT-Tables/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="assets/DT-Tables/js/dataTables.bootstrap4.min.js" type="text/javascript"></script>
        <script src="assets/DT-Tables/js/dataTables.responsive.min.js" type="text/javascript"></script>
        <script src="assets/DT-Tables/js/responsive.bootstrap4.min.js" type="text/javascript"></script>
        <script src="pouchdb-7.0.0.min.js"></script>
        <script src="pouchdb.find.min.js"></script>
        <script src="js/form_1.js" type="text/javascript"></script>

    </head>
    <script>
        $(document).ready(function () {
            $('#example-1').dataTable();
        });
    </script>
    <div id="tabs" class="project-tab">
                <div class="container1">
                    <div class="row">

                        <div class="col-md-12">
                            <nav>
                                <ul class="nav nav-tabs" id="nav-pills">
                                    <li class='nav-item btn btn-primary p-0  mr-1 mb-1'><a class='nav-link active' data-toggle='tab' data-target='#nav-home'>Add New</a></li>
                                    <li class='nav-item btn btn-primary p-0  mr-1 mb-1' ><a class='nav-link' data-toggle='tab' data-target='#nav-records' >Edit Record</a></li>
                                </ul>
                            </nav>


                            <div class="tab-content " id="nav-tabContent" >

                                <div class="tab-pane fade show active" id="nav-home">
                                    <h6 class="border-bottom border-gray pb-2 mb-0 mt-2">Enter New Record</h6>
                                    <div class="text-muted p-3 ">


                                        <form  id="form_data" autocomplete="off" validate method="POST" >
                                            <div class="row offset-0 p-1 border border-gray bg-light">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <input type="hidden"  name ="id" id="id" value="<%=002%>" />
                                                        <input type="hidden"  name ="rowid" id="rowid"  />
                                                        <label for="county">County</label>
                                                        <select class="form-control"  onchange="patasubcounty()" name='county' id='county'>
                                                            <option value=""> Select County</option>
                                                            <option value="1"> Nakuru</option>
                                                            <option value="2"> Laikipia</option>
                                                            <option value="3"> Narok</option>
                                                            <option value="4"> Baringo</option>
                                                            <option value="5"> Kajiado</option>
                                                            <option value="7"> Samburu</option>
                                                            <option value="8"> Turkana</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="subCounty">Sub-County</label>
                                                        <select class="form-control" onchange="patafacility()"   name='subcounty' id='subcounty' >

                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="healthFaciities">Health Facilities</label>
                                                        <select class="form-control"  name='facility' id='facility' >

                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="uniqueIdentifier">Unique Identifier</label>
                                                        <input type="text" class="form-control" id="uniqueIdentifier" name="uniqueIdentifier" placeholder=" Enter Unique Identifier">
                                                    </div>
                                                </div>
                                            </div>
                                            <!--start of second row -->
                                            <div class="row offset-0 mt-2 border border-gray bg-light">

                                                <div class="col-md-5">
                                                    <div class="form-group">
                                                        <label for="clientName">Client Name</label>
                                                        <input type="text" class="form-control" id="clientName" name="clientNme" placeholder=" Enter Client Name">
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="form-group">
                                                        <label for="Gender">Sex</label>
                                                        <select class="form-control" id="gender" name="gender">
                                                            <option value="">Select One</option>
                                                            <option value="M">Male</option>
                                                            <option value="F">Female</option>
                                                        </select>
                                                    </div>

                                                </div>
                                                <div class="col-md-5">
                                                    <div class="form-group" id="dtbirth" >
                                                        <label for="dateOfBirth">Date of Birth</label>
                                                        <input type="text" class="form-control" name="dateOfBirth" id="dateOfBirth">
                                                        <input type="hidden" class="form-control" name="age" id="age">
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row offset-0 mt-2 border border-gray bg-light">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="phoneNumber">Phone Number</label>
                                                        <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" placeholder=" Enter Phone Number">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="physicalAdress">Physical Address</label>
                                                        <input type="text" class="form-control" id="physicalAddress" name="physicalAddress" placeholder=" Enter Physical Address">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row offset-0 mt-2 border border-gray bg-light">

                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="patientNumber">Patient CCC Number(MFL+XXX) </label>
                                                        <div class="input-group mb-3">
                                                            <div class="input-group-prepend">
                                                                <span class="input-group-text" id="MFL">MFL</span>
                                                            </div>
                                                            <input type="text" class="form-control" id="patientNumber" name="patientNumber" disabled >

                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="uniqueIdDuplicates">Unique ID_Duplicates</label>
                                                        <input type="text" class="form-control" id="uniqueIdDuplicates" name="uniqueIdDuplicates" placeholder=" Enter Unique ID_Duplicates">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row offset-0 mt-2 border border-gray bg-light">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="dateConfirmed">Date Confirmed Positive (yyyy-mm-dd)</label>
                                                        <input type="text" class="form-control" id="dateConfirmed" name="dateConfirmed">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="enrollmentDate">Enrollment Date (yyyy-mm-dd)</label>
                                                        <input type="text" class="form-control" id="enrollmentDate" name="enrollmentDate">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="artStartDate">ART Start Date (yyyy-mm-dd)</label>
                                                        <input type="text" class="form-control" id="artStartDate" name="artStartDate">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="lastVisitDate">Last Visit Date(yyyy-mm-dd)</label>
                                                        <input type="text" class="form-control" id="lastVisitDate" name="lastVisitDate" placeholder=" Enter Unique Identifier">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="expectedReturnDate">Expected Return Date(TCA)(yyyy-mm-dd)</label>
                                                        <input type="text" class="form-control" id="expectedReturnDate" name="expectedReturnDate">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row offset-0 mt-2 border border-gray bg-light">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="attemptedDate">Attempted Date (yyyy-mm-dd)</label>
                                                        <input type="text" class="form-control" id="attemptedDate" name="attemptedDate">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="attemptedBy">Who Made The Attempt</label>
                                                        <input type="text" class="form-control" id="attemptedBy" name="attemptedBy" placeholder="Name of Person Who Made the Attempt">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="typeOfFollowUp">Type of Follow Up</label>
                                                        <select class="form-control" id="typeOfFollowUp" name="typeOfFollowUp">
                                                            <option value="">Select The Type of Follow Up Used</option>
                                                            <option value="Phone Call">Phone</option>
                                                            <option value="Physical Tracing">Physical Tracing</option>
                                                            <option value="Linked Desk">Link desk</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="tracingOutcome">Tracing Outcome</label>
                                                        <input type="text" class="form-control" id="tracingOutcome" name="tracingOutcome">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="notReachedStatus">Status of Not Reached</label>
                                                        <input type="text" class="form-control" id="notReachedStatus" name="notReachedStatus" placeholder="Enter Status of Not Reached">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="dateResumed">Date Resumed Treatment</label>
                                                        <input type="text" class="form-control" id="dateResumed" name="dateResumed">
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label for="comment">Comment</label>
                                                        <input type="text" class="form-control" id="comment" name="comment">
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

                                <div class="tab-pane fade" id="nav-records">

                                    <h6 class="border-bottom border-gray pb-2 mb-5 mt-2"> Records</h6>

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
                                            </tr>
                                        </thead>
                                        <tbody>

                                        </tbody>
                                    </table>


                                </div>


                            </div>

                        </div>
                    </div>
                </div>
            </div>
    <div class="container well">
        
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
                    <th>EX18</th>
                </tr>
            </thead>
            <tbody>
              
            </tbody>
        </table>
    </div>

</html>