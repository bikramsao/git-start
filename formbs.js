var firstName,
	  lastName,
	  isValidFname=false,
	  isValidLname=false;

$(document).ready(function(){
	validateFirstname();
	validateLastname();
	validate();

	function validateFirstname(){	
		$("#firstName").on("blur",function(){
			
				if($("#firstName").val().length<5)
				{
					$("#errFirstname").text("at least 5 character");
					$("#errFirstname").addClass("error");
				}
				else{console.log("error1")
					$("#errFirstname").addClass("correct");
					$("#errFirstname").text("correct");
					isValidFname=true;
				}
				
			});
	}	
	function validateLastname(){
		$("#lastName").on("blur",function(){
			
				if($("#lastName").val()==''){
					console.log("error")
					$("#errLastname").text("Should not be empty!");
					$("#errLastname").addClass("error");
				}
				else{
					$("#errLastname").text("correct");
					$("#errLastname").addClass("correct");
					isValidLname=true;
				}
		
		});
	}	
		

	function validate(){
		$("#submitButton").on("click",function(e){
			e.preventDefault();

			if (isValidFname&&isValidLname) {
				$("#submit_message").addClass("correct");
				$("#submit_message").text ("Submited sucessfully!");
				$("#submit_message").addClass("alert alert-success");	
			}
			else{
				$("#submit_message").addClass("error");
				$("#submit_message").text("Check the data!");
				$("#submit_message").addClass("alert alert-warning");
			}
		
		});
	}	
});		