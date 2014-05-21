function toggle_visibility(id) {
      var thelist = document.getElementsByClassName("alist");
      for (var i = 0; i < thelist.length; i++) {
        thelist[i].style.display = 'none';
      }
      var e = document.getElementById(id);
      if(e.style.display == 'block') {
        e.style.display = 'none';
      } else {
        e.style.display = 'block';
      }
    }
