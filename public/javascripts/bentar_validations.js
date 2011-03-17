// // JS validations for Bentar forms go here
// // These are Client Side.

// Example - 
// $(document).ready(function() {
//   
//   // Validates a Subscription
//     $('#form_id').validate({
//       rules: {
//         "formname[name]": "required",
//         "formname[email]": {required: true, email: true}
//       },
//       messages: {
//         "formname[name]": "Please enter your name",
//         "formname[email]": {
//           required: "Please enter an email address", 
//           email: "your email is not valid."}
//       }
//     });
// });


$(document).ready(function() {
  
  // Validates a Subscription
    $('#new_project').validate({
      rules: {
        "project[title]": "required"
      },
      messages: {
        "project[title]": "Project Name Required"
      }
    });
		
		$('#new_pic').validate({
      rules: {
        "pic[asset]": "required"
      },
      messages: {
        "pic[asset]": "Picture Required"
      }
    });

		$('#new_testimonial').validate({
      rules: {
        "testimonial[content]": "required",
				"testimonial[name]" : "required",
				"testimonial[company]" : "required"
				
      },
      messages: {
        "testimonial[content]": "Testimonial Required",
				"testimonial[name]" : "A name is required",
				"testimonial[company]" : "A company name is required"
      }
    });
		
		$('#new_associate').validate({
      rules: {
        "associate[name]": "required",
				"associate[business_name]" : "required",
				"associate[email]" : {required:true, email:true},
				"associate[phone]" : {number:true}
				
      },
      messages: {
        "associate[name]": "Name is required",
				"associate[business_name]" : "Business name is required",
				"associate[email]" : { required: "Please enter an email address", email: "Not a valid email address"},
				"associate[phone]" : {number: "Must be 10 digit 1234567890"}
      }
    });

		
});