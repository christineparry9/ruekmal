import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["stand", "pause", "sit", "finish", "hour", "minute", "second", "goal", "totalpoints"]

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
    }

  connect() {
    console.log("this is the timer controller!")
    console.log(document.URL)
    console.log(document.cookie, "hi there")
    this.hour = 9;
    this.minute = 45;
    this.second = 0;
    this.millisecond = 0;
    }

  stand(event) {
    this.cron = setInterval(() => { this.#timer(); }, 10);
    console.log(this.cron)
  }

  pause(event) {
    clearInterval(this.cron);
  }

  finish(event) {

    clearInterval(this.cron);
    let h = this.hourTarget.innerText * 60;
    let m = this.minuteTarget.innerText;
    let t = Number(h) + Number(m);
    let goal = this.goalTarget.innerHTML
    const time = goal.match(/\d+/)[0]
    const goal2 = goal
    let total = this.totalpointsTarget.innerHTML
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
      this.totalpointsTarget.innerHTML = data
      }
    )
    this.hourTarget.innerHTML = 00;
    this.minuteTarget.innerHTML = 00;
    this.secondTarget.innerHTML = 00;
    this.millisecondTarget.innerHTML = 0;
  }


}
