// This function enables us to color the field with the red color
// if the user do not filfull the field in the right way
function redColor(field, error) {
    if (error)
        field.style.borderColor = "#fba";
    else
        field.style.borderColor = "";
}

//This function enable us to verifty the fields that contain short strings like names, designations, ....

function shortLengthFieldVerif(field) {
    if (field.value.length < 2 || field.value.length > 25) {
        redColor(field, true);
        return false;
    } else {
        return true;
    }
}

function textVerif(field) {
    if (field.value.length < 15) {
        redColor(field, true);
        return false;
    } else {
        return true;
    }
}

function numberVerif(field) {
    if (isNaN(field)) {
        redColor(field, true);
        return false;
    } else
        return true;
}


// Verify the product creation form
function productFormVerif(form) {
    var designation = shortLengthFieldVerif(form.designation);
    var price = numberVerif(form.price);
    var quantity = numberVerif(form.quantity);
    if (designation && price && quantity)
        return true;
    else {
        alert("Please, filfull the required fields");
        return false;
    }
}