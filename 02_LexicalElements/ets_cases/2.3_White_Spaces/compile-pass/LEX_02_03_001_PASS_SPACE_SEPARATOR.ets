/**
 * @id LEX_02_03_001_PASS_SPACE_SEPARATOR
 * @expect compile-pass
 * @section 2.3
 * @design Space (U+0020) 作为词法分隔符: let x : number = 1 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testSpaceSeparator(): void {
  let x: number = 1
  let y: number = 2
}
