// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import "../plugins/flatpickr"
import { initSweetalert } from '../plugins/init_sweetalert';
import { initSelect2 } from '../components/init_select2';
import "../plugins/scrollreveal"
import { initStarRating } from '../plugins/init_star_rating';


// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  initSelect2();
});

initStarRating();

initSweetalert('#booking-delete', {
  title: "Cancel booking?",
  text: "Once canceled, you will not be able to go back!",
  icon: "warning",
  buttons: {
    cancel: true,
    confirm: true,
  },
}, (value) => {
  if (value) {
    const link = document.querySelector('#booking-delete-link');
    link.click();
  }
});

initSweetalert('#rental-delete', {
  title: "Decline rental?",
  text: "Once declined, you will not be able to go back!",
  icon: "warning",
  buttons: {
    cancel: true,
    confirm: true,
  },
}, (value) => {
  if (value) {
    const link = document.querySelector('#rental-delete-link');
    link.click();
  }
});

initSweetalert('#rental-accept', {
  title: "Accept rental?",
  icon: "success",
    buttons: {
    cancel: true,
    confirm: true,
  },
}, (value) => {
  if (value) {
    const link = document.querySelector('#update-link');
    link.click();
  }
});


