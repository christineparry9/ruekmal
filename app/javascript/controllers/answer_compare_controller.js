import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="answer-compare"
export default class extends Controller {
  static targets = ["form", "popover", "text"]


  checkbox(event) {
    this.textTargets.forEach((element) => {
      element.remove();
    });
    for (const p of this.formTarget) {
      console.log(event.srcElement)
      if (p.id != event.srcElement.id) {
        p.checked = false;
      }
    }
  }

  send(event) {
    event.preventDefault();
    // cleaning field for a new answer
    this.textTargets.forEach((element) => {
      element.remove()
    })
    // send user input and display the checked answer
    fetch(this.formTarget.action, {
      method: "POST",
      headers: { Accept: "application/json" },
      body: new FormData(this.formTarget),
    }).then(response => response.json())
      .then(data => {
        this.popoverTarget.insertAdjacentHTML("beforeend", data.popover);
      });
  }
}
