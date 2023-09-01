import { Controller } from "@hotwired/stimulus"
import Swiper from "swiper"

// Connects to data-controller="swiper"
export default class extends Controller {
  connect() {

    // const swiper = new Swiper('.swiper', {
    //   direction: 'horizontal',
    //   slidesPerView: 1,
    //   spaceBetween: 30,
    //   effect: "fade",
    //   loop: true,

    //   scrollbar: {
    //     el: '.swiper-scrollbar',
    //     hide: true,
    //   },

    //   pagination: {
    //     el: '.swiper-pagination',
    //     clickable: true,
    //   },

    //   navigation: {
    //     nextEl: '.swiper-button-next',
    //     prevEl: '.swiper-button-prev',
    //   },
    // });

    console.log(swiper);
  };
};
