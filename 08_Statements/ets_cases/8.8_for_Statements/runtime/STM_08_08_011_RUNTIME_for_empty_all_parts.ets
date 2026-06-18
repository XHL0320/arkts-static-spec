/**
 * @id STM_08_08_011_RUNTIME_for_empty_all_parts
 * @expect runtime
 * @section 8.8
 * @design 运行时验证 for(;;) 空所有部分的行为 — break 正确退出
 * @note 运行时用例：验证 for(;;) 循环计数器行为
 */
function main(): void {
  let count: int = 0
  for (;;) {
    count++
    if (count >= 5) { break }
  }
  if (count != 5) { throw new Error("for(;;) should iterate exactly 5 times, got " + count) }
  console.log("verified")
}
