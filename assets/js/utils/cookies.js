/**
 * Get a cookie value by name.
 * 
 * @param {string} name 
 * @return {string|null}
 */
export function getCookie(name) {
  const value = `; ${document.cookie}`
  const parts = value.split(`; ${name}=`)

  if (parts.length === 2) {
    return parts.pop().split(';').shift()
  }

  return null
}

/**
 * Delete a cookie.
 * 
 * @param {string} name 
 * @return {boolean}
 */
export function deleteCookie(name) {
  if (getCookie(name)) {
    document.cookie = `${name}=;expires=Thu, 01 Jan 1970 00:00:01 GMT`;

    return true
  }

  return false
}