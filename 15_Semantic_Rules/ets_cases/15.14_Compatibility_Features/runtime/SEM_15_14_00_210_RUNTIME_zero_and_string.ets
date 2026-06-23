/*
 * @id SEM_15_14_00_210_RUNTIME_zero_and_string
 * @expect runtime
 * @section 15.14
 * @design `0 && "x"` 返回 0（&& 遇到 falsy 短路返回）。
 */

function main(): void {
  let result = 0 && "x"
  arktest.assertEQ(result, 0)
}
