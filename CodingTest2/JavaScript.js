function txtNameonFocus(txt) {
    txt.value = "";
    txt.style.color = "black";
}

function txtNameOnBlur(txt) {
    if (txt.value == "") {
        txt.value = "Firstname Lastname";
        txt.style.color = "gray";
    }
}

function radFreeOnClick(rad) {
    document.getElementById("lblAmount").innerText = "$0";
}

function radBasicOnClick(rad) {
    document.getElementById("lblAmount").innerText = "$30";
}

function radPremiumOnClick(rad) {
    document.getElementById("lblAmount").innerText = "$60";
}

function onMonthChange(month) {
    // Code results in a dropdown list with the last day only. I'm not sure why.
    var day = document.getElementById("ddlDay");
    // Remove all prior options, then re-add "Day"
    emptyDdlDay(day);
    var option = document.createElement("option");
    option.text = "Day"
    option.value = "Day"
    day.options.add(option, 0);

    var lastDay;
    switch (month.value) {
        case "1": case "3": case "5": case "7": case "8": case "10": case "12":
            lastDay = 31
            break;
        case "2":
            lastDay = 29;
            break;
        case "4": case "6": case "9": case "11":
            lastDay = 30;
            break;
        default: break;
    }
    // Trying to change size of dropdown list to add elements to the end. 
    // I don't think this is working.
    day.options.size = lastDay + 1;

    // Adding days to the dropdown list after Day option
    for (var i = 1; i < lastDay + 1; i++) {
        option.text = i.toString();
        option.value = i.toString();
        day.options.add(option, i);
    }
}

function emptyDdlDay(day) {
    for (var i = 0; i <= day.size; i++) {
        day.remove(i);
    }
}