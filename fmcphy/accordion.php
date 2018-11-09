<div class="w3-accordion w3-light-grey">
  <button onclick="myFunction('Demo1')" class="w3-btn-block w3-left-align">
    Open Section 1
  </button>
  <div id="Demo1" class="w3-accordion-content w3-container">
    <p>Some text..</p>
  </div>
  <button onclick="myFunction('Demo2')" class="w3-btn-block w3-left-align">
    Open Section 2
  </button>
  <div id="Demo2" class="w3-accordion-content w3-container">
    <p>Some text..</p>
  </div>
</div>

<script>
function myFunction(id) {
    document.getElementById(id).classList.toggle("w3-show");
}
</script>