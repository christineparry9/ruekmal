import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="answer-compare"
export default class extends Controller {
  static values = {
    question: Number
  }
  connect() {
    console.log(this.questionValue)

  }
}
