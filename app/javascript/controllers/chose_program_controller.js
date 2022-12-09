import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chose-program"
export default class extends Controller {
  static targets = ["program"]

  connect() {
  }

  updateProgram(event){
    event.preventDefault
    // let formData = {"user[program_id]": event.currentTarget.id};
    let formData = {user: {program_id: event.currentTarget.id}};
    // formData.append("user[program_id]", this.programTarget)
    console.log(formData)
    const token = document.querySelector('meta[name="csrf-token"]').content
    const url = `/users/${event.currentTarget.dataset.user}`
    console.log(url)
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain", "X-CSRF-Token" : token },
      body: formData
    })
      .then(response => response.text())
      .then((data) => {
        this.programTarget.innerHTML = data
        console.log(data)
      })
  }
}

// let formData = new FormData();
//     formData.append("user[number_of_points]", nt)
    // const token = document.querySelector('meta[name="csrf-token"]').content
    // const spliturl = document.URL.split("/")
    // const url = "/users/" + spliturl[spliturl.length-1]
//     fetch(url,  {
//     method: "PATCH",
//     headers: { "Accept": "text/plain", "X-CSRF-Token" : token },
//     body: formData
//     })
//     .then(response => response.text())
//     .then((data) => {
//       this.totalpointsTarget.innerHTML = data
