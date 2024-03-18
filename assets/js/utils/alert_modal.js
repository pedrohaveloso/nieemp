import { deleteCookie, getCookie } from "./cookies"

export function alertModal() {
  const alerts = sessionStorage.getItem('alerts')

  if (alerts) {
    sessionStorage.removeItem('alerts')

    const alertsParsed = JSON.parse(alerts)

    if (Array.isArray(alertsParsed)) {
      alertsParsed.forEach(alert => {
        addModal(alert.type, alert.title, alert.message)
      })

      return
    }

    addModal(alertsParsed.type, alertsParsed.title, alertsParsed.message)

    return
  }
}

/**
 * Add a modal in the DOM.
 * 
 * @param {string} type 
 * @param {string} title 
 * @param {string} message 
 */
function addModal(type, title, message) {
  const modal = document.createElement('article')

  modal.className = 'w-fit h-fit min-w-32 mix-h-32 p-4 m-2 flex flex-col gap-2'

  // document.append(modal)
}