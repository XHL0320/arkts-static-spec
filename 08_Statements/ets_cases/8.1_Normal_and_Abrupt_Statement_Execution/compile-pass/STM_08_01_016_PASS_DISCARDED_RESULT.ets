/**
 * @id STM_08_01_016_PASS_DISCARDED_RESULT
 * @expect compile-pass
 * @section 8.1
 * @design 表达式语句的结果被丢弃
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testDiscardedResult(): void {
  let x: int = 0
  x + 1  // result is discarded (expression statement)
  let y: int = 5
  y * 2  // result is discarded
  console.log(x.toString())
}
