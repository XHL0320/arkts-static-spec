/**
 * @id STM_08_03_018_PASS_EMPTY_BLOCK
 * @expect compile-pass
 * @section 8.3
 * @design 空块语句
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testEmptyBlock(): void {
  {}
  let x: int = 1
  { }
  console.log(x.toString())
}
