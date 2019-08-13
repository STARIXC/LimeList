$("#dateOfBirth").datepicker({
    dateFormat: 'dd M yy',
    numberOfMonths: 1,
    changeMonth: true,
    changeYear: true,
    onSelect: function (selected) {
        var dt = new Date(selected);
        dt.setDate(dt.getDate() + 1);
        var age=(new Date()).getFullYear()-dt.getFullYear();
       // console.log("THE AGE IS :" +age);
        document.getElementById('age').value =age;
      /**  if (age <= 9) {
       var AgeBracket === "1-9 Yrs";
       console.log("Age Bracket": +AgeBracket);
    } else if (age >= 10 && Age <= 14) {
        var AgeBracket === "10-14 Yrs";
        console.log("Age Bracket": +AgeBracket);
    } else if (age >= 15 && Age <= 24) {
        var AgeBracket === "15-24 Yrs";
        console.log("Age Bracket": +AgeBracket);
    } else if (age >= 25 && Age <= 49) {
       var AgeBracket === "25-49 Yrs";
       console.log("Age Bracket": +AgeBracket);
    } else {
       var  AgeBracket === "50+ Yrs";
       console.log("Age Bracket": +AgeBracket);
    }**/
    
    }
});

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
    changeMonth: true,
    changeYear: true,
    numberOfMonths: 1,
    onSelect: function (selected) {
        var dt = new Date(selected);
        dt.setDate(dt.getDate() - 1);
        $("dateConfirmed").datepicker("option", "maxDate", dt);
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
