# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

```
document.onload = function() {
  var timeEn = document.getElementById("timeEnabler");
  var hour = document.getElementById("event_time_4i");
  var minute = document.getElementById("event_time_5i")
  timeEn.oninput = function(){
    if (timeEn.checked) {
      hour.removeAttribute("disabled");
      minute.removeAttribute("disabled");
    } else {
      hour.createAttribute("disabled");
      minute.createAttribute("disabled");
    }
  }
}
```
