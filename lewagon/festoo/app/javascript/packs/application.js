import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();
import flatpickr from 'flatpickr';

require("flatpickr/dist/flatpickr.css");

document.addEventListener("turbolinks:load", () => {
  flatpickr(".datepicker", {
    altInput: true,
    altFormat: "d/m/Y",
    dateFormat: "Y-m-d",
    // locale: Portuguese
  });
});



