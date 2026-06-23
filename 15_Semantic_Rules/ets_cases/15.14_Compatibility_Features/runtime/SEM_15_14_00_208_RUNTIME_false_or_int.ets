/*
 * @id SEM_15_14_00_208_RUNTIME_false_or_int
 * @expect runtime
 * @section 15.14
 * @design `false || 42` 返回 42（|| 返回第一个 truthy 操作数）。
 */

function main(): void {
  let result = false || 42
  arktest.assertEQ(result, 42)
}
