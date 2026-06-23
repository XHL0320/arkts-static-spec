/**
 * @id STM_08_08_021_RUNTIME_for_complex_condition
 * @expect runtime
 * @section 8.8
 * @design for 循环中使用复杂条件（&&, ||）的运行时验证
 * @note 运行时用例：验证复合条件正确控制循环
 */
function main(): void {
  let count: int = 0
  for (let i: int = 0; i < 10 && count < 5; i++) {
    count++
  }
  if (count != 5) { throw new Error("Expected count=5, got " + count) }
  console.log("verified")
}
