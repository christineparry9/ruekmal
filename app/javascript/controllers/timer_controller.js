import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["stand", "pause", "sit", "finish", "hour", "minute", "second", "goal", "totalpoints"]

  connect() {

    if (!localStorage.getItem("isOn")) {
      localStorage.setItem("isOn", false)
      localStorage.setItem("hour", 4)
      localStorage.setItem("minute", 0)
      localStorage.setItem("second", 0)
      console.log("variable not set")
    }
    console.log(localStorage.getItem("isOn"), "testtest")
    if (localStorage.getItem("isOn")== "true") {
      this.stand()
      console.log("is on")

    }
    this.hour = localStorage.getItem("hour");
    this.minute = localStorage.getItem("minute");
    this.second = localStorage.getItem("second");
    this.millisecond = 0;
    this.hourTarget.innerHTML = this.#returnData(this.hour);
    this.minuteTarget.innerHTML = this.#returnData(this.minute);
    this.secondTarget.innerHTML = this.#returnData(this.second);

    }
  #returnData(input) {
    return input > 10 ? input : `0${input}`
  }

  #timer() {
      if ((this.millisecond += 10) == 1000) {
        this.millisecond = 0;
        this.second++;
      }
      if (this.second == 60) {
        this.second = 0;
        this.minute++;
      }
      if (this.minute == 60) {
        this.minute = 0;
        this.hour++;
      }
      this.hourTarget.innerHTML = this.#returnData(this.hour);
      this.minuteTarget.innerHTML = this.#returnData(this.minute);
      this.secondTarget.innerHTML = this.#returnData(this.second);
       localStorage.setItem("hour", this.hour)
      localStorage.setItem("minute", this.minute)
      localStorage.setItem("second", this.second)
    }


  stand(event) {
    localStorage.setItem("isOn", true)
    this.cron = setInterval(() => { this.#timer(); }, 10);
    console.log( localStorage.getItem("isOn"))
  }

  pause(event) {
    clearInterval(this.cron);
    localStorage.setItem("isOn", false)
    console.log( localStorage.getItem("isOn"))
  }

  reset(event) {
    clearInterval(this.cron);
    let h = this.hourTarget.innerText * 60;
    let m = this.minuteTarget.innerText;
    let t = Number(h) + Number(m);
    let goal = this.goalTarget.innerHTML
    const time = goal.match(/\d+/)[0]
    const goal2 = goal
    let total = this.totalpointsTarget.lastChild.innerHTML

    let nt = Number(total);
    if (t >= time) {  nt += 5 };
    let formData = new FormData();
    formData.append("user[number_of_points]", nt)
    const token = document.querySelector('meta[name="csrf-token"]').content
    const spliturl = document.URL.split("/")
    const url = "/users/" + spliturl[spliturl.length-1]
    fetch(url,  {
      method: "PATCH",
      headers: { "Accept": "text/plain", "X-CSRF-Token" : token },
      body: formData
    })
    .then(response => response.text())
    .then((data) => {
      if (document.URL.match(url)) {this.totalpointsTarget.innerHTML = data}
      this.hourTarget.innerHTML = "00";
      this.minuteTarget.innerHTML = "00";
      this.secondTarget.innerHTML = "00";
      this.hour = 4
      this.minute = 0
      this.second = 0
      localStorage.setItem("hour", 4)
      localStorage.setItem("minute", 0)
      localStorage.setItem("second", 0)
      console.log("finish")
      localStorage.setItem("isOn", false)
    }
    )
  }


}
