/*
 * @id SEM_15_14_00_201_RUNTIME_nonempty_string_true
 * @expect runtime
 * @section 15.14
 * @design 非空字符串在条件中为 truthy。
 */

function main(): void {
  let x = "hello" ? "truthy" : "falsy"
  arktest.assertEQ(x, "truthy")
}
