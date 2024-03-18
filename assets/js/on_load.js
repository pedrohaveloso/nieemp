import { alertModal } from "./utils/alert_modal"

export function onLoad() {
  sessionStorage.setItem('alerts', JSON.stringify({ type: "error", title: "olá", content: "mundo" }))

  alertModal()
}