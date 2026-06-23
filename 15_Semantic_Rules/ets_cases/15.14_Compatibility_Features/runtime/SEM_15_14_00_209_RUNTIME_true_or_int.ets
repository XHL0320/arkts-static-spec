/*
 * @id SEM_15_14_00_209_RUNTIME_true_or_int
 * @expect runtime
 * @section 15.14
 * @design `true || 42` 返回 true（|| 遇到 truthy 短路返回）。
 */

function main(): void {
  let result = true || 42
  arktest.assertEQ(result, true)
}
