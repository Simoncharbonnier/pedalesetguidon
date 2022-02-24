import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "start", "end", "price", "daily", "totalprice" ]

  price() {
    const start = this.startTarget
    const end = this.endTarget
    const price = this.priceTarget
    const daily = this.dailyTarget
    const totalprice = this.totalpriceTarget

    const startDate = Date.parse(start.value)
    const endDate = Date.parse(end.value)
    const diff = endDate - startDate
    const days = diff/1000/60/60/24

    if (endDate >= startDate) {
      price.value = (days + 1) * daily.innerText
      totalprice.innerText = price.value + "€"
    } else {
      totalprice.innerText = ""
    }
  }
}
