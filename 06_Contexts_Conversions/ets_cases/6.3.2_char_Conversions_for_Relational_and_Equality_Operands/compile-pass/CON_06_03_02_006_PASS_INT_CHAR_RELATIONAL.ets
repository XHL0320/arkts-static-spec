/**
 * @id CON_06_03_02_006_PASS_INT_CHAR_RELATIONAL
 * @expect compile-pass
 * @section 6.3.2
 * @design int < char: char widening 为 int (与 int 同类)，直接比较
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testIntCharRelational(): void {
  let i: int = 50
  let c: char = c'9'
  let r1: boolean = i < c
  let r2: boolean = i > c
}
