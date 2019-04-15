$(document).ready(function(){
    var string = [];
    var string2 = [];
   $("#instrumentTable button").on("click",function(){
      var id = $(this).attr("id");
      var indeks = string.indexOf(id);
      if(string.indexOf(id) !== -1){ 
        string.splice(indeks,1);
        $(this).text("Dodaj v košarico");
        $.get(
                "izbrisInstrumentov.php",{id:id},function(){
                    alert("Artikel je odstranjen!");
                }
        );
      }
      else{
          $(this).text("Odstrani");
          string.push(id);
          $.get(
             "vnosInstrumentov.php",{id:id},function(){
                 alert("Artikel je dodan!");
             }
          );
     }
});
$("#equipmentTable button").on("click",function(){
    var id = $(this).attr("id");
      var indeks = string.indexOf(id);
      if(string.indexOf(id) !== -1){ 
        string.splice(indeks,1);
        $(this).text("Dodaj v košarico");
        $.get(
                "izbrisOpreme.php",{id:id},function(){
                    alert("Artikel je odstranjen!"); 
                }
        );
      }
      else{
          $(this).text("Odstrani");
          string.push(id);
          $.get(
             "vnosOpreme.php",{id:id},function(){
                 alert("Artikel je dodan!");
             }
          );
     }
});
});