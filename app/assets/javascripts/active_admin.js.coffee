#= require active_admin/base
#= require jquery-fileupload/basic
#= require jquery-fileupload/vendor/tmpl

jQuery ->
  $('#new_image').fileupload
  	dataType: "script"
