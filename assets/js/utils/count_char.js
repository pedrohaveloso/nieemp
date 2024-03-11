/**
 * Returns the amount of a specific character contained in a String.
 * 
 * ## Examples
 * 
 *     countChar('Hello, World!', 'l') // 3
 *     countChar('Hello, World!', ['l', 'o']) // Map(2) { 'l' => 3, 'o' => 2 }
 * 
 * @param {string} str
 * @param {string[]|string} char
 * 
 * @return {Map<string, number>|number} 
 */
export function countChar(str, char) {
  /** @type {Map<string, number>|number} */
  let amount

  if (typeof char == 'object') {
    amount = new Map()

    char.forEach(c => {
      amount.set(c, _iterableString(str, c))
    });
  }

  if (typeof char == 'string') {
    amount = _iterableString(str, char)
  }

  return amount
}

/**
 * @param {string} str
 * @param {string} char
 * 
 * @return {number}
 */
function _iterableString(str, char) {
  let amount = 0;

  for (let i = 0; i < str.length; i++) {
    if (str[i] == char) {
      amount++
    }
  }

  return amount
}