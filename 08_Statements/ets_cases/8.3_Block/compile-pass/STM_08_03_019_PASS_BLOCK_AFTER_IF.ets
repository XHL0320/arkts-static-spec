/**
 * @id STM_08_03_019_PASS_BLOCK_AFTER_IF
 * @expect compile-pass
 * @section 8.3
 * @design if 语句后的块
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testBlockAfterIf(): void {
  let x: int = 0
  if (true) { x = 1 }
  { x = 2 }
  console.log(x.toString())
}
