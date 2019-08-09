<%-- 
    Document   : index
    Created on : Aug 7, 2019, 9:52:13 AM
    Author     : HSDSA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <!--  This file has been downloaded from https://bootdey.com  -->
        <!--  All snippets are MIT license https://bootdey.com/license -->
        <title>Bootdey.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="offline/js/jquery.min.js"></script>
        <link href="offline/assets/bootstrap.min.css" rel="stylesheet">
        <style type="text/css">
            body{margin-top:20px;}

            .toggleDisplay {
                display: none;
            }
            .toggleDisplay.in {
                display: table-cell;
            }
        </style>
    </head>
    <body>

        <table class="table table-bordered" id="DemoTable">
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
                </tr>
            </thead>
            <tbody>
                
            </tbody> 
        </table>

        <script src="offline/assets/bootstrap.min.js"></script>
        <script type="text/javascript">
            $("#click-me").click(function () {
                $(".table .toggleDisplay").toggleClass("in");
            });
        </script>
    </body>
</html>