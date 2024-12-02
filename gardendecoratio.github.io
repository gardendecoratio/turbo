
// public/javascript/controllers/location_controller.js

import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  request(event) {
    event.preventDefault()

    navigator.geolocation.getCurrentPosition(
      this.success.bind(this),
      this.failure.bind(this),
      {enableHighAccuracy: true}
    )
  }

  success(position) {
    const {latitude, longitude} = position.coords
    alert(`${latitude}, ${longitude}`)
  }

  failure(error) {
    alert(`Could not get your location: ${error.message}.`)
  }
}
