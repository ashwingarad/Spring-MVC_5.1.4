$(function() {

	$("#employeeForm").validate({
		rules : {
			ename : "required",
			salary : {
				required : true,
				minlength : 5
			}
		},
		messages : {
			ename : "Please Enter Valid name",
			salary : {
				required : "Please Enter salary",
				minlength : "Your salary must be 5 or more digits"
			}
		},
		submitHandler : function(form) {
			form.action = "saveEmployee.html";
			form.submit();
		}
	})

});


function editEmp(id) {
	document.location.href = "index.html?id=" + encodeURI(id);
}

function deleteEmp(id) {
	document.location.href = "deleteEmployee.html?id=" + encodeURI(id);
}