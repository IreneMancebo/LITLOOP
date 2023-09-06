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

      direction: 'horizontal',
      loop: true,

      pagination: {
        el: '.swiper-pagination',
        dynamicBullets: true,
      },
    });

    console.log(swiper);
  };
};
