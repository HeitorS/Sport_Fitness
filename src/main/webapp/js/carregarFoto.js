window.addEventListener("load",carregar(evt));
function carregar(e){
$('#imagens').live('change', function(){
 var input = document.getElementById("imagens");
 var fReader = new FileReader();
 fReader.readAsDataURL(input.files[0]);
 fReader.onloadend = function(event){
  $("#form").css('background', 'url('+event.target.result+') no-repeat center center');
  $("#form").css('background-size', 'cover');
 };
});
}