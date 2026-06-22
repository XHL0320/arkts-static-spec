/**
 * @id STM_08_03_016_PASS_NESTED_BLOCKS
 * @expect compile-pass
 * @section 8.3
 * @design 嵌套块语句
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testNestedBlocks(): void {
  let x: int = 0
  { x = 1
    { x = 2
      { x = 3 } } }
  console.log(x.toString())
}
