/**
 * @id LEX_02_03_005_PASS_NBSP_SEPARATOR
 * @expect compile-pass
 * @section 2.3
 * @design No-break space (U+00A0) 作为词法分隔符 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testNbspSeparator(): void {
  let x: number = 1
  let y: number = 2
}
