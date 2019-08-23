//set variable to represent the article form
var recordForm = document.getElementById('form_data');
var BtnReset = document.getElementById('btn_reset');
var BtnSave = document.getElementById('save_data');
var divDisplayData = document.getElementById('datat');
//setup for pouchdb
//Requiring the package  
//var PouchDB = require('PouchDB');  
var LocalDB = new PouchDB('LTFU_Data');
//var RenoteDB = false;
var RemoteDB = 'http://127.0.0.1:5984/ltfu_data/';

$("#save_data").click(function () {
    $('#loading').html('<img src="images/ajax-loader.gif"> loading...');
    //run saveArticle function, which will run validation, save if validated
    validateForm();
    //saveRecord();
}); //end submit-button click handler
//
$("#updatebutton").click(function () {
    $('#loading').html('<img src="images/ajax-loader.gif"> loading...');
    //run saveArticle function, which will run validation, save if validated
    validateEditForm();
}); //end submit-button click handler
//synch button
$('#button-sync').click(function () {
    sync();
});
// create a new record object and write it to the database, then reset page
function saveRecord() {

    //create variables from the form
    var user_id = $('#id').val();
    var Id = $('#facility_select').data('mfl') + "_" + $('#patientNumber').val() + "-" + $('#age').val();
    var County = $('select#county').data('county');
    var subcounty = $('select#subcounty').data('name');
    var SubPartnerNom = $('#facility_select').data('facility');
    var mflcode = $('#facility_select').data('mfl');
    var ClientsName = $('#clientName').val();
    var PatientCCC = mflcode + "_" + $('#patientNumber').val();
    var Gender = $('#gender').val();
    var Age = $('#age').val();
    var PhoneNo = $('#phoneNumber').val();
    var PhysicalAddress = $('#physicalAddress').val();
    var DateConfirmed = $('#dateConfirmed').val();
    var EnrollmentDate = $('#enrollmentDate').val();
    var ArtStartDate = $('#artStartDate').val();
    var LastVisitDate = $('#lastVisitDate').val();
    var ExpectedReturnDate = $('#expectedReturnDate').val();
    var DateResumed = $('#dateResumed').val();
    var AttemptedDate = $('#attemptedDate').val();
    var AttemptedBy = $('#attemptedBy').val();
    var TypeofFollowUp = $('#typeOfFollowUp').val();
    var TracingOutcome = $('#tracingOutcome').val();
    var OutcomeStatus = $('#rco-nro').val();
    var Comment = $('#comment').val();
    var patientStatus = $('patientStatus').val();
    var record = {
        //createded and updated wihout user input
        _id: Id,
        //these field are updated by the user from the form
        id: Id,
        County: County,
        subcounty: subcounty,
        SubPartnerNom: SubPartnerNom,
        Mflcode: mflcode,
        ClientName: ClientsName,
        PatientCCC: PatientCCC,
        Gender: Gender,
        Age: Age,
        PhoneNo: PhoneNo,
        PhysicalAddress: PhysicalAddress,
        DateConfirmed: DateConfirmed,
        EnrollmentDate: EnrollmentDate,
        ARTStartDate: ArtStartDate,
        LastVisit: LastVisitDate,
        ExpectedReturn: ExpectedReturnDate,
        AttemptedDate: AttemptedDate,
        AttemptedBy: AttemptedBy,
        Tfollowup: TypeofFollowUp,
        TracingOutcome: TracingOutcome,
        OutcomeStatus: OutcomeStatus,
        DateResumedTreatment: DateResumed,
        Comments: Comment,
        patientStatus: patientStatus,
        timestamp: new Date().getTime(),
        user_id: user_id
    };
    console.log("State of record object BEFORE doing db.put: " + JSON.stringify(record));
    LocalDB.put(record, function callback(error, result) {
        if (!error) {
            modeReset();
            result = "record saved";
            console.log("State of record object BEFORE doing db.put: " + JSON.stringify(record));
            // once record is successfully saved, reset the page using our function
            $('#loading').fadeIn().html(result);
            setTimeout(function () {
                $('#loading').fadeOut('slow');
            }, 2000);
        } else {
            result = "something went wrong";

        }

    });
}

//run all validation functions when called from saverecord
function validateForm() {
   $('#form_data').validate({
        rules: {
            county: {
                required: true
            },
            subcounty: {
                required: true
            },
            facility: {
                required: true
            },
            clientName: {
                required: true
            },

            patientNumber: {
                required: true
            },
            gender: {
                required: true
            },
            age: {
                required: true
            },
            phoneNumber: {
                required: true
            },
            physicalAddress: {
                required: true
            },
            /** hivtestDate: {
             required: function (dat) {
             return $("#hivStaus").val() === 'Pos';
             }
             },**/
            dateConfirmed: {
                required: true
            },
            enrollmentDate: {
                required: true
            },
            artStartDate: {
                required: true
            },
            lastVisitDate: {
                required: true
            },
            expectedReturnDate: {
                required: true
            },
            attemptedDate: {
                required: true
            },
            attemptedBy: {
                required: true
            },
            typeOfFollowUp: {
                required: true
            },
            tracingOutcome: {
                required: true
            },
            dateResummed: {
                required:  function (dat) {
             return $("#rco-nro").val() === 'Active' ||$("#rco-nro").val() === 'Restarted ART';
             }
            },
            comment: {
                required: true
            },
            patientStatus: {
                required: true
            }
        },
        messages: {
            county: "Please Select the County from the drop down options",
            subcounty: "Please Select the Sub-County from the drop down options",
            facility: "Please Select the Facility from the drop down options",
            clientName: "Please Enter the Client Name",
            patientNumber: "Please Enter the Unique Patient CCC Number without the MFL Code",
            gender: "Please Select the Sex/Gender of the Patient from the drop down options",
            age: "Please Enter Age of Patient at Registration, (if below 12 months, round up to 1 yr)",
            phone: "Please enter Phone Number in the Format +254700000000",
            physicalAddress: "Please enter detailed description of the patient Physical Address i.e. Land mark",
            dateConfirmed: "Please select the Date Patient Confirmed Positive",
            enrollmentDate: "Please select the Enrollment Date",
            artStartDate: "Please select the ART Start Date",
            lastVisitDate: "Please select the Last Visit Date",
            expectedReturnDate: "Please select the Expected Return Date",
            attemptedDate: "Please select the Tracing Attempted Date",
            attemptedBy: "Please Enter the name of the Person who attempted Follow up",
            typeOfFollowUp: "Please select the Type Follow up Used",
            tracingOutcome: "Please Choose the Tracing Out Come ",
            dateResummed: "please Choose the date Client Resumed Treatment",
            patientStatus: "Please Choose the Patient Status"
        },
        submitHandler: function (form) {
            saveRecord();
        }

    });
}

//reset page to start, 
function modeReset() {
    //scroll to top of page
    scrollTop();
    //reset the form and hash
    recordForm.reset();
} //end modeReset
function scrollTop() {
    //scroll to top of page
    //thx to SO: https://stackoverflow.com/questions/4210798/how-to-scroll-to-top-of-page-with-javascript-jquery
    document.body.scrollTop = document.documentElement.scrollTop = 0;
}
//show all records in table rows
function addRecord(record) {
    var data = record.doc;
    var newdata = "<tr>" +
            " </td><td>" + data.ClientName +
            " </td><td>" + data.PatientCCC +
            " </td><td>" + data.PhoneNo +
            "</td><td>" + data.PhysicalAddress +
            "</td><td>" + data.DateConfirmed +
            "</td><td>" + data.EnrollmentDate +
            "</td><td>" + data.ARTStartDate +
            "</td><td>" + data.LastVisit +
            "</td><td>" + data.ExpectedReturn +
            "</td><td>" + data.AttemptedDate +
            "</td><td>" + data.AttemptedBy +
            "</td><td>" + data.Tfollowup +
            "</td><td>" + data.TracingOutcome +
            "</td><td>" + data.OutcomeStatus +
            "</td><td>" + data.DateResumedTreatment +
            "</td><td>" + data.Comments +
            "</td><td><button title='Edit!' class='btn-info' href='#nav-home' data-toggle='tab' onclick='loadSavedRecordData(\"" + data._id + "\",\"" + data.Mflcode + "\",\"no\")'><i class='glyphicon glyphicon-edit'></i></button>" +
            "<button id='delete' title='Delete!' class='btn-danger' data-id='" + data._id + "'><i class='glyphicon glyphicon-trash'></i></button>" +
            "</td></tr>";
    // $('#TableResults tbody').append(newdata);
    $('#example tbody').append(newdata);
    //$('#example-1 tbody ').append(newdata);
}

function deleteRecord(id) {
    LocalDB.get(id).then(function (doc) {
        LocalDB.remove(doc).then(console.log).catch(console.log);
    });
}
function ShowRecords() {
    //get all data from the db
    return LocalDB.allDocs({include_docs: true, ascending: true}).then(function (records) {
        // console.log(records);
        //$('#TableResults tbody').html('');
        $('#example tbody').html('');

        $.each(records.rows, function (i, record) {
            addRecord(record);
        });

    });
}


//when a new entry is added to/removed from update the records table
LocalDB.changes({
    since: 'now',
    live: true,
    include_docs: true
}).on('change', processChanges);
//call the function to monitor changes in the database and update the table rows
function processChanges(record) {
    if (record.doc._deleted) {
        ShowRecords();

    } else {
        addRecord(record);
    }

}
//when the site loads we load all previous saved data from the local database
var promise = ShowRecords();
//after loading continously synchronise with the sync gateway this will trigger LocalDb change
//retry connection if the connection goes down
promise.then(function () {
    LocalDB.sync(RemoteDB, {
        live: true,
        retry: true
    });
});

var dbs = new PouchDB('subcounty');
//var RenoteDB = false;
var remotedbs = 'http://localhost:5984/subcounty/';
dbs.sync(remotedbs, {
    live: true,
    retry: true
});


dbs.changes({
    since: 'now'
}).on('change', function (change) {
    // received a change
    console.log(change);
}).on('error', function (err) {
    // handle errors
    console.log(err);
});

dbs.createIndex({
    index: {
        fields: ['CountyID', 'active', 'DistrictID']
    }
});
function patasubcounty() {
    console.log("pata county called");
    var county = document.getElementById("county").value;
    var subcounty = "<option value=''>Select Sub-County</option>";
    dbs.find({
        selector: {
            active: {$eq: '1'},
            CountyID: county
        }
        //fields: ['_id', 'CountyID'],
        //sort: ['CountyID']
    }).then(function (list) {

        // var list =doc;  
        console.log(list);

        for (var a = 0; a <
                list['docs'].length; a++) {

            subcounty += "<option value='" + list['docs'][a]['DistrictID'] + "' data-name='" + list['docs'][a]['DistrictNom'] + "'>" + list['docs'][a]['DistrictNom'] + "</option>";

        }//end of for loop
        $("#subcounty").html(subcounty.replace("<option value=''>Select SubCounty</option>", ""));
        var select = document.getElementById('subcounty');
        //$('#subcounty').select2();

    }).catch(function (err) {
        console.log(err);
    });

}




var db = new PouchDB('facilities');
//var RenoteDB = false;
var remotedb = 'http://localhost:5984/facility/';
db.sync(remotedb, {
    live: true,
    retry: true
});


db.changes({
    since: 'now'
}).on('change', function (change) {
    // received a change
    console.log(change);
}).on('error', function (err) {
    // handle errors
    console.log(err);
});
db.createIndex({
    index: {
        fields: ['DistrictID', 'active']
    }
});
//FUNCTION PATA FACILITY
function patafacility() {
    console.log("pata county called");
    var subc = document.getElementById("subcounty").value;
    var facilities = "<option value=''>Select Facility</option>";
    db.find({
        selector: {
            active: {$eq: '1'},
            DistrictID: subc
        }
        //fields: ['_id', 'CountyID'],
        //sort: ['CountyID']
    }).then(function (facility) {

        // var list =doc;  
        console.log(facility);

        for (var k = 0; k <
                facility['docs'].length; k++) {
            facilities += "<option id='facility_select' value='" + facility['docs'][k]['SubParnerNom'] + "' data-subpartnerid='" + facility['docs'][k]['SubPartnerID'] + "' data-mfl='" + facility['docs'][k]['CentreSanteId'] + "' data-facility='" + facility['docs'][k]['SubPartnerNom'] + "' >" + facility['docs'][k]['SubPartnerNom'] + " </option>";
            // $("#subcounty").append("<option value='" +list['docs'][a]['DistrictID']  + "'>" + list['docs'][a]['DistrictNom'] + "</option>");
        }//end of for loop
        $("#facility").html(facilities.replace("<option value=''>Select facility</option>", ""));
        var select = document.getElementById('facility');
        //$('#facility').select2();

    }).catch(function (err) {
        console.log(err);
    });

}

function sync() {
    db.sync(remotedb)
            .on('complete', function () {
                console.log('All data has been sync!');
            })
            .on('error', function (err) {
                console.log('The sync has failed!');
            });
}

$("#showRecords").on("click", ".btn_edit", function () {
    editRecordPrep($(this).parent());
});



function loadSavedRecordData(id, Mflcode) {
    //load from tb_data db where id is as selected   
    LocalDB.get(id).then(function (doc) {
        var rowid = id;
        //populate div with respective content
        $("#rowid").val(id);
        $('select#county').find("option[value='" + doc.County + "']").prop('selected', true);
        $('select#subcounty').find("option[value='" + doc.subcounty + "']").prop('selected', true);
        $('select#facility_select').find("option[value='" + doc.subPartnerNom + "']").prop('selected', true);
        $("#clientName").val(doc.ClientsName);
        $("#patientNumber").val(doc.PatientCCC);
        $('select#gender').find("option[value='" + doc.Gender + "']").prop('selected', true);
        $("#ageOnRegistration").val(doc.Age);
        $("#phoneNumber").val(doc.PhoneNo);
        $("#physicalAddress").val(doc.PhysicalAddress);
        $("#dateConfirmed").val(doc.DateConfirmed);
        $("#enrollmentDate").val(doc.EnrollmentDate);
        $("#artStartDate").val(doc.ArtStartDate);
        $("#LastVisitDate").val(doc.lastVisitDate);
        $("#expectedReturnDate").val(doc.ExpectedReturnDate);
        $("#attemptedDate").val(doc.AttemptedDate);
        $("#attemtedBy").val(doc.AttemptedBy);
        $("#typeOfFollowUp").find("option[value='" + doc.Tfollowup + "']").prop('selected', true);
        $("#tracingOutcome").find("option[value='" + doc.TracingOutcome + "']").prop('selected', true);
        $("#rco-nro").find("option[value='" + doc.OutcomeStatus + "']").prop('selected', true);
        $("#dateResumed").val(doc.DateRessumedTreatment);
        $("#comment").val(doc.Comments);
        $("#patientStatus").find("option[value='" + doc.patientStatus + "']").prop('selected', true);
        $("#save_data").hide();
        $("#updatebutton").show();


    });

}

//run all validation functions when called from saverecord
function validateEditForm() {
    $('#form_data').validate({
        rules: {
            county: {
                required: true
            },
            subcounty: {
                required: true
            },
            facility: {
                required: true
            },
            clientName: {
                required: true
            },

            patientNumber: {
                required: true
            },
            gender: {
                required: true
            },
            age: {
                required: true
            },
            phoneNumber: {
                required: true
            },
            physicalAddress: {
                required: true
            },
            /** hivtestDate: {
             required: function (dat) {
             return $("#hivStaus").val() === 'Pos';
             }
             },**/
            dateConfirmed: {
                required: true
            },
            enrollmentDate: {
                required: true
            },
            artStartDate: {
                required: true
            },
            lastVisitDate: {
                required: true
            },
            expectedReturnDate: {
                required: true
            },
            attemptedDate: {
                required: true
            },
            attemptedBy: {
                required: true
            },
            typeOfFollowUp: {
                required: true
            },
            tracingOutcome: {
                required: true
            },
            dateResummed: {
                required: true
            },
            patientStatus: {
                required: true
            }
        },
        messages: {
            county: "Please Select the County from the drop down options",
            subcounty: "Please Select the Sub-County from the drop down options",
            facility: "Please Select the Facility from the drop down options",
            clientName: "Please Enter the Client Name",
            patientNumber: "Please Enter the Unique Patient CCC Number without the MFL Code",
            gender: "Please Select the Sex/Gender of the Patient from the drop down options",
            age: "Please Enter Age of Patient at Registration, (if below 12 months, round up to 1 yr)",
            phone: "Please enter Phone Number in the Format +254700000000",
            physicalAddress: "Please enter detailed description of the patient Physical Address i.e. Land mark",
            dateConfirmed: "Please select the Date Patient Confirmed Positive",
            enrollmentDate: "Please select the Enrollment Date",
            artStartDate: "Please select the ART Start Date",
            lastVisitDate: "Please select the Last Visit Date",
            expectedReturnDate: "Please select the Expected Return Date",
            attemptedDate: "Please select the Tracing Attempted Date",
            attemptedBy: "Please Enter the name of the Person who attempted Follow up",
            typeOfFollowUp: "Please select the Type Follow up Used",
            tracingOutcome: "Please Choose the Tracing Out Come ",
            dateResummed: "please Choose the date Client Resumed Treatment",
            patientStatus: "Please Choose the Patient Status"
        },
        submitHandler: function (form) {
            saveEditRecord();
        }

    });
}
function saveEditRecord(id, County, subcounty, SubPartnerNom, mflcode, ClientName, PatientCCC, Gender, Age, PhoneNo, PhysicalAddress, DateConfirmed, EnrollmentDate, ArtStartDate, LastVisit, ExpectedReturn, AttemptedDate, AttemptedBy, Tfollowup, TracingOutcome, outcomeStatus, DateResumedTreatment, Comments, PatientStatus, user_id) {

    //create variables from the form
    var user_id = $('#id').val();
    var Id = $('#facility_select').data('mfl') + "_" + $('#patientNumber').val() + "-" + $('#age').val();
    var County = $('select#county').data('county');
    var subcounty = $('select#subcounty').data('name');
    var SubPartnerNom = $('#facility_select').data('facility');
    var mflcode = $('#facility_select').data('mfl');
    var ClientsName = $('#clientName').val();
    var PatientCCC = mflcode + "_" + $('#patientNumber').val();
    var Gender = $('#gender').val();
    var Age = $('#age').val();
    var PhoneNo = $('#phoneNumber').val();
    var PhysicalAddress = $('#physicalAddress').val();
    var DateConfirmed = $('#dateConfirmed').val();
    var EnrollmentDate = $('#enrollmentDate').val();
    var ArtStartDate = $('#artStartDate').val();
    var LastVisitDate = $('#lastVisitDate').val();
    var ExpectedReturnDate = $('#expectedReturnDate').val();
    var DateResumed = $('#dateResumed').val();
    var AttemptedDate = $('#attemptedDate').val();
    var AttemptedBy = $('#attemptedBy').val();
    var TypeofFollowUp = $('#typeOfFollowUp').val();
    var TracingOutcome = $('#tracingOutcome').val();
    var OutcomeStatus = $('#rco-nro').val();
    var Comment = $('#comment').val();
    var patientStatus = $('#patientStatus').val();

    LocalDB.get(id).then(function (doc) {
        if (id !== 'null' && id !== '') {
            doc._id = id;
            //these field are updated by the user from the form
            doc.id = Id;
            doc.County = County;
            doc.subcounty = subcounty;
            doc.SubPartnerNom = SubPartnerNom;
            doc.Mflcode = mflcode;
            doc.ClientName = ClientsName;
            doc.PatientCCC = PatientCCC;
            doc.Gender = Gender;
            doc.Age = Age;
            doc.PhoneNo = PhoneNo;
            doc.PhysicalAddress = PhysicalAddress;
            doc.DateConfirmed = DateConfirmed;
            doc.EnrollmentDate = EnrollmentDate;
            doc.ARTStartDate = ArtStartDate;
            doc.LastVisit = LastVisitDate;
            doc.ExpectedReturn = ExpectedReturnDate;
            doc.AttemptedDate = AttemptedDate;
            doc.AttemptedBy = AttemptedBy;
            doc.Tfollowup = TypeofFollowUp;
            doc.TracingOutcome = TracingOutcome;
            doc.OutcomeStatus = OutcomeStatus;
            doc.DateResumedTreatment = DateResumed;
            doc.Comments = Comment;
            doc.patientStatus = patientStatus;
            doc.timestamp = new Date().getTime();
            doc.user_id = user_id;
            //put the records back
            return LocalDB.put(doc, function callback(error, result) {
                if (!error) {
                    modeReset();
                    doc = "record Updated";
                    console.log("State of record object BEFORE doing db.put: " + JSON.stringify(doc));
                    // once record is successfully saved, reset the page using our function
                    $('#loading').fadeIn().html(result);
                    setTimeout(function () {
                        $('#loading').fadeOut('slow');
                    }, 2000);
                } else {


                }

            });
        }

    });
}

//patasubcounty();
//patafacility();
ShowRecords();
sync();
