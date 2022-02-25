import { Controller } from "@hotwired/stimulus"
// Don't forget to import the NPM package
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Nantes !", "Bordeaux !", "Lille !", "Paris !", "Lyon !", "Bayonne !", "Brest !", "Marseille !"],
      typeSpeed: 100,
      backSpeed: 50,
      smartBackspace: true,
      loop: true
    });
  }
}
