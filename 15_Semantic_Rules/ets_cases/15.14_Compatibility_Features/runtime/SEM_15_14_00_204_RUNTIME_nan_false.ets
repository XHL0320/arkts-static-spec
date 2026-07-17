/*
 * @id SEM_15_14_00_204_RUNTIME_nan_false
 * @expect runtime
 * @section 15.14
 * @design NaN 在条件中为 falsy。
 */

function main(): void {
  let nan: number = 0.0 / 0.0
  let x = nan ? "truthy" : "falsy"
  arktest.assertEQ(x, "falsy")
}
