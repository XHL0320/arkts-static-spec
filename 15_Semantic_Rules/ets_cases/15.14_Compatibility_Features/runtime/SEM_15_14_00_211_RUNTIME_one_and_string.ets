/*
 * @id SEM_15_14_00_211_RUNTIME_one_and_string
 * @expect runtime
 * @section 15.14
 * @design `1 && "x"` 返回 "x"（&& 连续评估返回第二个操作数）。
 */

function main(): void {
  let result = 1 && "x"
  arktest.assertEQ(result, "x")
}
