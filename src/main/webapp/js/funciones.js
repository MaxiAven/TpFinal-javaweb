//funcion para desplegar y ocultar sugerncias en la vista viaje
$("#sugerencias").hide().fadeOut("slow");
$("#btnSugOcultar").hide().fadeOut("slow");
		 
		 $("#btnSug").click(function(){
			 $("#sugerencias").show().fadeIn("slow");
			 $("#btnSugOcultar").show().fadeIn("slow");
			 $("#btnSug").hide().fadeOut("slow");
		 });
		 
		 $("#btnSugOcultar").click(function(){
			 $("#sugerencias").hide().fadeOut("slow");
			 $("#btnSugOcultar").hide().fadeOut("slow");
			 $("#btnSug").show().fadeIn("slow");
		 });