$(document).ready(function () {
    // Bind event handler to the dropdown list
    $("#ddlQualification").change(function () {
        // Get the selected value
        var selectedValue = $(this).val();

        // Show/hide div elements based on the selected value
        if (selectedValue === "0" || selectedValue === "7" || selectedValue === "8" || selectedValue === "9" || selectedValue === "10" || selectedValue === "11") {
            $("#dvSpecification").hide();

        } else {
            $("#dvSpecification").show();

        }
    });
});


function KeyPressOrder(fld, e) {
    //٠١٢٣٤٥٦٧٨٩
    var strCheck = '0123456789';
    var whichCode = e.which ? e.which : e.keyCode;

    if (whichCode == 13 || whichCode == 8 || whichCode == 9) return true;
    key = String.fromCharCode(whichCode);
    if (strCheck.indexOf(key) == -1)
        return false;

    return true;
}

function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57))
        return false;

    return true;
}


function ValidateEmail(email) {
    var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    return expr.test(email);
};
