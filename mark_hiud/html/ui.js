
const format = (num, decimals) => num.toLocaleString('en-US', {
   minimumFractionDigits: 2,      
   maximumFractionDigits: 2,
});
$(document).ready(function() {
    window.addEventListener('message', function(event) {
        var data = event.data;     
        if (event.data.action == "updateHealth") {
            $('#boxHealth').css('width', event.data.value+'%')
            $('#boxArmor').css('width', event.data.valuearmor+'%')
            if(event.data.podvodou == 1){
                zbyva = ((event.data.lefttime / 30) * 100);
            }
            else{
            }  
        }        
    })
})
