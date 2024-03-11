/**
 * @typedef {Object} CpfInputHook
 * 
 * @property {HTMLInputElement} el
 * @property {Function} mounted
 */

import { countChar } from "../utils/count_char"

/**
 * Creates a CPF mask in a text input.
 * 
 * ## Examples
 * 
 *     <label for="example-cpf-input">
 *       CPF
 *       <input name="example-cpf-input" id="example-cpf-input" phx-hook="cpf-input" />
 *     </label>
 * 
 * @type {CpfInputHook}
 */
export const cpfInputHook = {
  mounted() {
    this.el.inputMode = "numeric"
    this.el.pattern = "[0-9]"
    this.el.maxLength = "14"

    this.el.oninput = function (event) {
      /** @type {string} */
      let value = event.target.value

      if ((/[^0-9.\-]/).test(value)) {
        value = value.replace(/[^0-9.\-]/g, '')
      }

      if (
        value.length == 3 &&
        countChar(value, ".") < 1 &&
        event.inputType == "insertText"
      ) {
        value = `${value}.`
      }

      if (
        value.length == 7 &&
        countChar(value, ".") < 2 &&
        event.inputType == "insertText"
      ) {
        value = `${value}.`
      }

      if (
        value.length == 11 &&
        countChar(value, "-") < 1 &&
        event.inputType == "insertText"
      ) {
        value = `${value}-`
      }

      if (value.length == 14) {
        value = value.replace(/\D/g, "");
        value = value.replace(/(\d{3})(\d{3})(\d{3})(\d{2})/, "$1.$2.$3-$4");
        value = value.substring(0, 14)
      }

      event.target.value = value
    }
  }
}