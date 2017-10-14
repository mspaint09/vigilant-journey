$(document).ready(function() {
	$("#txtPWVerified").on("blur", function() {
		if($("#txtPassword").val() === $("#txtPWVerified").val()) {
			if($("#txtPassword").val() === "") {
				$("#errMsg").text("Password cannot be blank.");
			} else {
				$("#errMsg").text("Passwords match.");
			}
		} else {
			$("#errMsg").text("Passwords don't match.");
			$("#txtPassword").focus();
		}
	});
});