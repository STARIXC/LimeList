
$('#facility').change(function (event) {
    var mflcode = $('#facility_select').data('mfl');
    $("#MFL").text(mflcode + "-");
});

$('#tracingOutcome').change(function (event) {
    var outcome = $(this).val();
    var tOutselect = "<option value=''>Select Outcome Status</option>";
    if (outcome === 'Not Reached') {
        // console.log(counties[s]+"_"+doc.county+"_");

        tOutselect += "<option  value='Not Reached'>Not Reached</option>" +
                "<option  value='No Locator Details'>No Locator Details</option>";
    } else if (outcome === 'Reached') {
        tOutselect += "<option value='Restarted on Art'>Restarted on Art</option>" +
                "<option  value='Self Transfer'>Self Transfer</option>"+
                "<option  value='Transfer Out'>Transfer Out</option>"+
                "<option  value='Active'>Active</option>"+
                "<option  value='Confirmed Dead'>Confirmed Dead</option>"+
                "<option  value='Scheduled to Come'>Scheduled to Come</option>"+
                "<option  value='Stopped Treatment'>Stopped Treatment</option>"+
                "<option  value='Collecting Drugs from another facility'>Collecting Drugs from another facility</option>"+
                "<option  value='On Transit'>On Transit</option>";
    }
    
    $("#rco-nro").html(tOutselect);


});

function disableEnable(){
    var outcome = document.getElementById("rco-nro");
    if(outcome.value === "Active" ||outcome.value === "Restarted on Art" ){
        document.getElementById("dateResumed").disabled = false;
    }else{
        document.getElementById("dateResumed").disabled = true;
    }
}

$("#dateConfirmed").datepicker({
    dateFormat: 'dd M yy',
    changeMonth: true,
    changeYear: true,
    numberOfMonths: 1,
    onSelect: function (selected) {
        var dt = new Date(selected);
        dt.setDate(dt.getDate() - 1);
        //$("dateOfRegistration").datepicker("option", "maxDate", dt);
    }
});
$("#enrollmentDate").datepicker({
    dateFormat: 'dd M yy',
    //changeMonth: true,
    //changeYear: true,
    numberOfMonths: 1,
   yearRange: new Date().getFullYear().toString() + ':' + new Date().getFullYear().toString(),
    onClose: function (selectedDate) {
        $("#dateConfirmed").datepicker("option", "minDate", selectedDate);
    }
    
});
$("#artStartDate").datepicker({
    dateFormat: 'dd M yy',
    changeMonth: true,
    changeYear: true,
    numberOfMonths: 1,
    onSelect: function (selected) {
        var dt = new Date(selected);
        dt.setDate(dt.getDate() - 1);
        //$("dateConfirmed").datepicker("option", "maxDate", dt);
    }
});
$("#lastVisitDate").datepicker({
    dateFormat: 'dd M yy',
    changeMonth: true,
    changeYear: true,
    numberOfMonths: 1,
    onSelect: function (selected) {
        var dt = new Date(selected);
        dt.setDate(dt.getDate() - 1);
        //$("dateConfirmed").datepicker("option", "maxDate", dt);
    }
});
$("#expectedReturnDate").datepicker({
    dateFormat: 'dd M yy',
    changeMonth: true,
    changeYear: true,
    numberOfMonths: 1,
    onSelect: function (selected) {
        var dt = new Date(selected);
        dt.setDate(dt.getDate() - 1);
        //$("dateConfirmed").datepicker("option", "maxDate", dt);
    }
});
//  $("#artdate").datepicker();
// $("#hivTestDate").datepicker(  );


$("#attemptedDate").datepicker({
    dateFormat: 'dd M yy',
    changeMonth: true,
    changeYear: true,
    yearRange: new Date().getFullYear().toString() + ':' + new Date().getFullYear().toString(),
    onClose: function (selectedDate) {
        // $("#artdate").datepicker("option", "minDate", selectedDate);
    }
});
$("#dateResumed").datepicker({
    dateFormat: 'dd M yy',
    changeMonth: true,
    changeYear: true,
    yearRange: new Date().getFullYear().toString() + ':' + new Date().getFullYear().toString(),
    onClose: function (selectedDate) {
        //$("#hivTestDate").datepicker("option", "maxDate", selectedDate);
    }
});
