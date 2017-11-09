$('.estrellas').starrr({
	rating : 3,
	change : function(e, valor) {
		$('#calificacion').attr("value", valor);
	}
});