package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.apache.tomcat.util.http.Cookies;
import javax.servlet.http.Cookie;

public final class index_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<head><style id=\"stndz-style\"></style>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("    <meta name=\"description\" content=\"\">\r\n");
      out.write("    <meta name=\"author\" content=\"\">\r\n");
      out.write("    <title>Lime List Management System</title>\r\n");
      out.write("    <!-- Bootstrap core CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/bootstrap/css/bootstrap.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"assets/DT-Tables/css/dataTables.bootstrap4.min.css\">\r\n");
      out.write("    <link href=\"assets/DT-Tables/css/responsive.bootstrap4.min.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("    <link href=\"assets/bootstrap/css/bootstrap-glyphicons.min.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("    <link href=\"assets/bootstrap/maps/glyphicons-fontawesome.min.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/footable.bootstrap.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/select2.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/bootstrap/css/bootstrap-formhelpers.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/calender/lib/jquery-ui.min.css\">\r\n");
      out.write("    <!-- Custom styles for this template -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/font-awesome/css/font-awesome.min.css\">\r\n");
      out.write("    <link href=\"assets/offcanvas.css\" rel=\"stylesheet\">\r\n");
      out.write("    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n");
      out.write("    <script type=\"text/javascript\" src=\"assets/DT-Tables/js/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("    <script src=\"assets/DT-Tables/js/jquery.dataTables.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <script src=\"assets/DT-Tables/js/dataTables.bootstrap4.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <script src=\"assets/DT-Tables/js/dataTables.responsive.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <script src=\"assets/DT-Tables/js/responsive.bootstrap4.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write(" <script>\r\n");
      out.write("        $(document).ready(function () {\r\n");
      out.write("           $('#example').dataTable();\r\n");
      out.write("        });\r\n");
      out.write(" </script>\r\n");
      out.write("<body class=\"bg-light\" onload=\"\">\r\n");
      out.write("    <nav class=\"navbar navbar-expand-lg fixed-top navbar-dark bg-dark\">\r\n");
      out.write("        <a class=\"navbar-brand mr-auto mr-lg-0\" href=\"#\">Lime List Management System</a>\r\n");
      out.write("        <button class=\"navbar-toggler p-0 border-0\" type=\"button\" data-toggle=\"offcanvas\">\r\n");
      out.write("            <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("        </button>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"navbar-collapse offcanvas-collapse\" id=\"navbarsExampleDefault\">\r\n");
      out.write("            <ul class=\"navbar-nav mr-auto\">\r\n");
      out.write("                <li class=\"nav-item active\">\r\n");
      out.write("                    <a class=\"nav-link\" href=\"#\">Dashboard <span class=\"sr-only\">(current)</span></a>\r\n");
      out.write("                </li>\r\n");
      out.write("\r\n");
      out.write("                <!-- <li class=\"nav-item\">\r\n");
      out.write("                     <a class=\"nav-link\" href=\"#\">Notifications</a>\r\n");
      out.write("                 </li>\r\n");
      out.write("                -->\r\n");
      out.write("\r\n");
      out.write("            </ul>\r\n");
      out.write("            <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                    <a class=\"nav-link\" href=\"#\">Welcome :<i class=\"glyphicon glyphicon-user\"></i>User your ID:user</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                    <a class=\"nav-link\" title=\"Help\" data-toggle=\"modal\" href=\"#help\">\r\n");
      out.write("                        <i class=\"glyphicon glyphicon-question-sign\"></i>\r\n");
      out.write("                        Help\r\n");
      out.write("                    </a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                    <a class=\"nav-link\" href=\"../logout.jsp\">\r\n");
      out.write("                        <i class=\"glyphicon glyphicon-lock\"></i>\r\n");
      out.write("                        Logout\r\n");
      out.write("                    </a>\r\n");
      out.write("                </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"nav-scroller bg-default box-shadow\">\r\n");
      out.write("        <nav class=\"nav nav-underline\">\r\n");
      out.write("            <a class=\"nav-link active\" href=\"#\">Dashboard</a>\r\n");
      out.write("            <a class=\"nav-link\" href=\"index.jsp\">Maternal/ART</a>\r\n");
      out.write("            <!--  <a class=\"nav-link\" href=\"#\">\r\n");
      out.write("                  Friends\r\n");
      out.write("                  <span class=\"badge badge-pill bg-light align-text-bottom\">27</span>\r\n");
      out.write("              </a>\r\n");
      out.write("              <a class=\"nav-link\" href=\"#\">Explore</a>\r\n");
      out.write("              <a class=\"nav-link\" href=\"#\">Suggestions</a>-->\r\n");
      out.write("\r\n");
      out.write("        </nav>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <main role=\"main\"  class=\"container\">\r\n");
      out.write("        <div class=\"row p-3 mt-2\">\r\n");
      out.write("            <label class=\"col-sm-2\"></label>\r\n");
      out.write("            <a class='btn btn-success col-sm-3' style=\"text-align: center;\" href='https://hsdsacluster2.fhi360.org'>Dashboards Home</a>\r\n");
      out.write("            <label class=\"col-sm-2\"></label>\r\n");
      out.write("            <a class='btn btn-success col-sm-3' style=\"text-align: center;\" href='aca_mca_reports.jsp'>Generate Reports</a>\r\n");
      out.write("            <label class=\"col-sm-2\"></label>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"p-3 my-3  bg-white rounded box-shadow\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"lh-100 text-center \">\r\n");
      out.write("                <h5 class=\"mb-0 text-primary lh-100 \">Lime List Management System</h5>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"row p-1 m-2 offset-1\">\r\n");
      out.write("\r\n");
      out.write("            <a href=\"#\" id='refreshpage' class=\"btn btn-danger col-md-6\">\r\n");
      out.write("                <i class=\"glyphicon glyphicon-refresh\"></i>\r\n");
      out.write("                <br> Refresh\r\n");
      out.write("            </a>\r\n");
      out.write("            <a class=\"btn btn-danger col-md-6\" title=\"Help\" data-toggle=\"modal\" href=\"#help\">\r\n");
      out.write("                <i class=\"glyphicon glyphicon-question-sign\"></i>\r\n");
      out.write("                <br> Help\r\n");
      out.write("            </a>  \r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div class=\"my-1 mb-5 p-2 bg-white rounded box-shadow\">\r\n");
      out.write("            <section id=\"tabs\" class=\"project-tab\">\r\n");
      out.write("                <div class=\"container1\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"col-md-12\">\r\n");
      out.write("                            <nav>\r\n");
      out.write("                                <ul class=\"nav nav-tabs\" id=\"nav-pills\">\r\n");
      out.write("                                    <li class='nav-item btn btn-primary p-0  mr-1 mb-1'><a class='nav-link active' data-toggle='tab' data-target='#nav-home'>Add New</a></li>\r\n");
      out.write("                                    <li class='nav-item btn btn-primary p-0  mr-1 mb-1' ><a class='nav-link' data-toggle='tab' data-target='#nav-records' >Edit Record</a></li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </nav>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"tab-content \" id=\"nav-tabContent\" >\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"tab-pane fade show active\" id=\"nav-home\">\r\n");
      out.write("                                    <h6 class=\"border-bottom border-gray pb-2 mb-0 mt-2\">Enter New Record</h6>\r\n");
      out.write("                                    <div class=\"text-muted p-3 \">\r\n");
      out.write("                                        <center>\r\n");
      out.write("                                            <div id=\"loading\" class=\"alert-success\"></div>\r\n");
      out.write("                                        </center>\r\n");
      out.write("\r\n");
      out.write("                                        <form  id=\"form_data\" autocomplete=\"off\" validate method=\"POST\" >\r\n");
      out.write("                                            <div class=\"row offset-0 p-1 border border-gray bg-light\">\r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <input type=\"hidden\"  name =\"id\" id=\"id\" value=\"");
      out.print(002);
      out.write("\" />\r\n");
      out.write("                                                        <input type=\"hidden\"  name =\"rowid\" id=\"rowid\"  />\r\n");
      out.write("                                                        <label for=\"county\">County</label>\r\n");
      out.write("                                                        <select class=\"form-control\"  onchange=\"patasubcounty()\" name='county' id='county'>\r\n");
      out.write("                                                            <option value=\"\"> Select County</option>\r\n");
      out.write("                                                            <option value=\"1\"> Nakuru</option>\r\n");
      out.write("                                                            <option value=\"2\"> Laikipia</option>\r\n");
      out.write("                                                            <option value=\"3\"> Narok</option>\r\n");
      out.write("                                                            <option value=\"4\"> Baringo</option>\r\n");
      out.write("                                                            <option value=\"5\"> Kajiado</option>\r\n");
      out.write("                                                            <option value=\"7\"> Samburu</option>\r\n");
      out.write("                                                            <option value=\"8\"> Turkana</option>\r\n");
      out.write("                                                        </select>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div> \r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"subCounty\">Sub-County</label>\r\n");
      out.write("                                                        <select class=\"form-control\" onchange=\"patafacility()\"   name='subcounty' id='subcounty' >\r\n");
      out.write("\r\n");
      out.write("                                                        </select>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"healthFaciities\">Health Facilities</label>\r\n");
      out.write("                                                        <select class=\"form-control\"  name='facility' id='facility' >\r\n");
      out.write("\r\n");
      out.write("                                                        </select>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"patientNumber\">Patient CCC Number(MFL+XXX) </label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"patientNumber\" name=\"patientNumber\" placeholder=\" Enter Patient Number\">\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <!--start of second row -->\r\n");
      out.write("                                            <div class=\"row offset-0 mt-2 border border-gray bg-light\">\r\n");
      out.write("\r\n");
      out.write("                                                <div class=\"col-md-5\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"clientName\">Client Name</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"clientName\" name=\"clientNme\" placeholder=\" Enter Client Name\">\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-md-2\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"Gender\">Sex</label>\r\n");
      out.write("                                                        <select class=\"form-control\" id=\"gender\" name=\"gender\">\r\n");
      out.write("                                                            <option value=\"\">Select One</option>\r\n");
      out.write("                                                            <option value=\"M\">Male</option>\r\n");
      out.write("                                                            <option value=\"F\">Female</option>\r\n");
      out.write("                                                        </select>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-md-5\">\r\n");
      out.write("                                                    <div class=\"form-group\" id=\"dtbirth\" >\r\n");
      out.write("                                                        <label for=\"dateOfBirth\">Date of Birth</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" name=\"dateOfBirth\" id=\"dateOfBirth\">\r\n");
      out.write("                                                        <input type=\"hidden\" class=\"form-control\" name=\"age\" id=\"age\">\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"row offset-0 mt-2 border border-gray bg-light\">\r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"phoneNumber\">Phone Number</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"phoneNumber\" name=\"phoneNumber\" placeholder=\" Enter Phone Number\">\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"physicalAdress\">Physical Address</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"physicalAddress\" name=\"physicalAddress\" placeholder=\" Enter Physical Address\">\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"row offset-0 mt-2 border border-gray bg-light\">\r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"uniqueIdentifier\">Unique Identifier</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"uniqueIdentifier\" name=\"uniqueIdentifier\" placeholder=\" Enter Unique Identifier\">\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"uniqueIdDuplicates\">Unique ID_Duplicates</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"uniqueIdDuplicates\" name=\"uniqueIdDuplicates\" placeholder=\" Enter Unique ID_Duplicates\">\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"row offset-0 mt-2 border border-gray bg-light\">\r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"dateConfirmed\">Date Confirmed Positive (yyyy-mm-dd)</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"dateConfirmed\" name=\"dateConfirmed\">\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"enrollmentDate\">Enrollment Date (yyyy-mm-dd)</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"enrollmentDate\" name=\"enrollmentDate\">\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"artStartDate\">ART Start Date (yyyy-mm-dd)</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"artStartDate\" name=\"artStartDate\">\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"lastVisitDate\">Last Visit Date(yyyy-mm-dd)</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"lastVisitDate\" name=\"lastVisitDate\" placeholder=\" Enter Unique Identifier\">\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"expectedReturnDate\">Expected Return Date(TCA)(yyyy-mm-dd)</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"expectedReturnDate\" name=\"expectedReturnDate\">\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"row offset-0 mt-2 border border-gray bg-light\">\r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"attemptedDate\">Attempted Date (yyyy-mm-dd)</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"attemptedDate\" name=\"attemptedDate\">\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"attemptedBy\">Who Made The Attempt</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"attemptedBy\" name=\"attemptedBy\" placeholder=\"Name of Person Who Made the Attempt\">\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"typeOfFollowUp\">Type of Follow Up</label>\r\n");
      out.write("                                                        <select class=\"form-control\" id=\"typeOfFollowUp\" name=\"typeOfFollowUp\">\r\n");
      out.write("                                                            <option value=\"\">Select The Type of Follow Up Used</option>\r\n");
      out.write("                                                            <option value=\"Phone Call\">Phone</option>\r\n");
      out.write("                                                            <option value=\"Physical Tracing\">Physical Tracing</option>\r\n");
      out.write("                                                            <option value=\"Linked Desk\">Link desk</option>\r\n");
      out.write("                                                        </select>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"tracingOutcome\">Tracing Outcome</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"tracingOutcome\" name=\"tracingOutcome\">\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"notReachedStatus\">Status of Not Reached</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"notReachedStatus\" name=\"notReachedStatus\" placeholder=\"Enter Status of Not Reached\">\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-md-6\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"dateResumed\">Date Resumed Treatment</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"dateResumed\" name=\"dateResumed\">\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-md-12\">\r\n");
      out.write("                                                    <div class=\"form-group\">\r\n");
      out.write("                                                        <label for=\"comment\">Comment</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"comment\" name=\"comment\">\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"row offset-0 mt-2 pt-3 border border-gray bg-light\">\r\n");
      out.write("                                                <div class=\"col-md-8\">\r\n");
      out.write("                                                    <input type=\"submit\" class=\"btn btn-success btn-lg mb-2\" id=\"save_data\" name=\"save_data\" value=\"Save Record\"/>\r\n");
      out.write("\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-md-8\">\r\n");
      out.write("                                                    <button type=\"submit\" id='updatebutton' style=\"margin-left: 0%;display:none;\" class=\"btn-lg btn-info active\">\r\n");
      out.write("                                                        UPDATE \r\n");
      out.write("                                                    </button>\r\n");
      out.write("\r\n");
      out.write("                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </form>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"tab-pane fade\" id=\"nav-records\">\r\n");
      out.write("\r\n");
      out.write("                                    <h6 class=\"border-bottom border-gray pb-2 mb-5 mt-2\"> Records</h6>\r\n");
      out.write("\r\n");
      out.write("                                    <table id=\"example\" class=\"table table-bordered dt-responsive\" cellspacing=\"0\" width=\"100%\">\r\n");
      out.write("                                        <thead>\r\n");
      out.write("                                            <tr>\r\n");
      out.write("                                                <th>County</th>\r\n");
      out.write("                                                <th>S.County</th>\r\n");
      out.write("                                                <th>Facility</th>\r\n");
      out.write("                                                <th>MFL</th>\r\n");
      out.write("                                                <th>C.Name</th>\r\n");
      out.write("                                                <th>CCC #</th>\r\n");
      out.write("                                                <th>Gender</th>\r\n");
      out.write("                                                <th>Phone</th>\r\n");
      out.write("                                                <th>Address</th>\r\n");
      out.write("                                                <th>DOB</th>\r\n");
      out.write("                                                <th>Unique</th>\r\n");
      out.write("                                                <th>Age</th>\r\n");
      out.write("                                                <th>Date C.+ve</th>\r\n");
      out.write("                                                <th>Enrollment DT</th>\r\n");
      out.write("                                                <th>ART Start DT</th>\r\n");
      out.write("                                                <th>Expected R.Date</th>\r\n");
      out.write("                                                <th>Attempted Date</th>\r\n");
      out.write("                                                <th>Attempted By</th>\r\n");
      out.write("                                                <th>Tracing Method</th>\r\n");
      out.write("                                                <th>Tracing Out Come</th>\r\n");
      out.write("                                                <th>Status</th>\r\n");
      out.write("                                                <th>DT. Resumed TX</th>\r\n");
      out.write("                                                <th>Comment</th>\r\n");
      out.write("                                                <th>EX18</th>\r\n");
      out.write("                                            </tr>\r\n");
      out.write("                                        </thead>\r\n");
      out.write("                                        <tbody>\r\n");
      out.write("\r\n");
      out.write("                                        </tbody>\r\n");
      out.write("                                    </table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </main>\r\n");
      out.write("    <footer class=\"text-center m-5\"> &copy; AphiaPlus USAID </footer>\r\n");
      out.write("\r\n");
      out.write("    <!-- Bootstrap core JavaScript\r\n");
      out.write("    ================================================== -->\r\n");
      out.write("    <!-- Placed at the end of the document so the pages load faster -->\r\n");
      out.write("    <script src=\"pouchdb-7.0.0.min.js\"></script>\r\n");
      out.write("    <script src=\"pouchdb.find.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <!-- Include all compiled plugins (below), or include individual files as needed -->\r\n");
      out.write("    <script src=\"assets/bootstrap/js/bootstrap.min.js\" ></script>\r\n");
      out.write("    <script src=\"js/jquery.validate.min.js\"></script>\r\n");
      out.write("    <script src=\"js/select2.min.js\"></script>\r\n");
      out.write("    <script src=\"js/additional/additional.js\"></script>\r\n");
      out.write("    <script src=\"assets/popper.min.js\"></script>\r\n");
      out.write("    <script src=\"assets/offcanvas.js\"></script>\r\n");
      out.write("    <script src=\"assets/bootstrap/js/bootstrap-formhelpers.js\"></script>\r\n");
      out.write("    <script src=\"assets/calender/lib/jquery-ui.min.js\"></script>\r\n");
      out.write("    <script src=\"js/form_1.js\"></script>\r\n");
      out.write("    <script src=\"js/app.js\"></script>\r\n");
      out.write("    <script src=\"js/facility.js\"></script>\r\n");
      out.write("    <script src=\"js/datepicker.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    ");
/**
         * } else { response.sendRedirect("login.jsp"); }*
         */
    
      out.write("\r\n");
      out.write("    <script src=\"js/app.js\"></script>\r\n");
      out.write("   \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
