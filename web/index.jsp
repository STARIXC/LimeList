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

</head>
<script>
    $(document).ready(function() {
        $('#example').dataTable();
    });
</script>

<div class="container well">
    <table id="example" class="table table-bordered dt-responsive" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>County</th>
                <th>S.County</th>
                <th>Facility</th>
                <th>MFL</th>
                <th>C.Name</th>
                <th>CCC #</th>
                <th>Gender</th>
                <th>Phone</th>
                <th>Address</th>
                <th>DOB</th>
                <th>Unique</th>
                <th>Age</th>
                <th>Date C.+ve</th>
                <th>Enrollment DT</th>
                <th>ART Start DT</th>
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
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>Sample 1</td>
                <td>Sample 2</td>
                <td>Sample 3</td>
                <td>Sample 4</td>
                <td>Sample 5</td>
                <td>Sample 6</td>
                <td>Sample 7</td>
                <td>Sample 8</td>
                <td>Sample 9</td>
                <td>Sample 10</td>
                <td>Sample 11</td>
                <td>Sample 12</td>
                <td>Sample 13</td>
                <td>Sample 14</td>
                <td>Sample 15</td>
                <td>Sample 16</td>
                <td>Sample 17</td>
                <td>Sample 18</td>
               
            </tr>
        </tbody>
    </table>
</div>

</html>