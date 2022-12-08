// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
// import "bootstrap"
const bootstrap = require('bootstrap') // or
// import bootstrap from 'bootstrap'
var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
  return new bootstrap.Popover(popoverTriggerEl)
})
