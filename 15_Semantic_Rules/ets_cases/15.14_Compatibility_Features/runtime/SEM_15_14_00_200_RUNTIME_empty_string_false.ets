/*
 * @id SEM_15_14_00_200_RUNTIME_empty_string_false
 * @expect runtime
 * @section 15.14
 * @design 空字符串 "" 在条件中为 falsy。
 */

function main(): void {
  let x = "" ? "truthy" : "falsy"
  arktest.assertEQ(x, "falsy")
}
