<div class="footer">
	<div class="ui grid">
		<div class="ui row">
			<div class="ui column">
				<h4>Footer</h4>
			</div>
		</div>
	</div>
</div>

<script>  
 $(document).ready(function(){  
   $('#email').blur(function(){

     var username = $(this).val();

     $.ajax({
      url:'',
      method:"POST",
      data:{email:email},
      success:function(data)
      {
       if(data != '0')
       {
        $('.error').html('<span class="text-danger">Email not available</span>');
        $('#register').attr("disabled", true);
       }
       else
       {
        $('#.error').html('<span class="text-success">Username Available</span>');
        $('#register').attr("disabled", false);
       }
      }
     })

  });
 });  
</script>

</body>