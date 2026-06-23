/*
 * @id SEM_15_14_00_203_RUNTIME_nonzero_int_true
 * @expect runtime
 * @section 15.14
 * @design 非零整数在条件中为 truthy。
 */

function main(): void {
  let x = 1 ? "truthy" : "falsy"
  arktest.assertEQ(x, "truthy")
}
