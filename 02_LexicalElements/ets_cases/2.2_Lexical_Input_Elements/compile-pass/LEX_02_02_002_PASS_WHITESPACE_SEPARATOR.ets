/**
 * @id LEX_02_02_002_PASS_WHITESPACE_SEPARATOR
 * @expect compile-pass
 * @section 2.2
 * @design 空白符(空格、Tab、多空白)分隔Token: let x: number = 1 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testWhitespaceSeparator(): void {
  let x: number = 1
  let	y: number = 2
  let   z  :  number  =  3
}
