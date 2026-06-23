/**
 * @id STM_08_03_017_PASS_BLOCK_SCOPE_SHADOW
 * @expect compile-pass
 * @section 8.3
 * @design 块作用域变量遮蔽
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testBlockScopeShadow(): void {
  let item: int = 123
  { const item: string = "shadow"
    console.log(item) }
  console.log(item.toString())
}
