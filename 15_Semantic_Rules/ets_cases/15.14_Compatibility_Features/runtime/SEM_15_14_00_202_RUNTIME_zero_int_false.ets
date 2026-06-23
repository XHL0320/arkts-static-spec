/*
 * @id SEM_15_14_00_202_RUNTIME_zero_int_false
 * @expect runtime
 * @section 15.14
 * @design 整数 0 在条件中为 falsy。
 */

function main(): void {
  let x = 0 ? "truthy" : "falsy"
  arktest.assertEQ(x, "falsy")
}
