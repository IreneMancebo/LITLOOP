import { Controller } from "@hotwired/stimulus";

import Swiper from "swiper"


// import 'swiper/css';

// import 'swiper/css/bundle';

// Connects to data-controller="swiper"
export default class extends Controller {
  connect() {
    const swiper = new Swiper('.swiper', {

      speed: 400,
      spaceBetween: 100,

      // Optional parameters
      direction: 'horizontal',
      loop: true,

      // If we need pagination
      pagination: {
        el: '.swiper-pagination',
      },

      // Navigation arrows
      // navigation: {
      //   nextEl: '.swiper-button-next',
      //   prevEl: '.swiper-button-prev',
      // },

      // And if we need scrollbar

    });

    console.log(swiper);
  };
};
