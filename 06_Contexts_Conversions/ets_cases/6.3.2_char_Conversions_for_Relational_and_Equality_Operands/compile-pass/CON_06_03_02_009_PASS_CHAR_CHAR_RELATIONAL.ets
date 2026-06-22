/**
 * @id CON_06_03_02_009_PASS_CHAR_CHAR_RELATIONAL
 * @expect compile-pass
 * @section 6.3.2
 * @design char < char: 两个 char 均 widening 为 int 后比较
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testCharCharRelational(): void {
  let a: char = c'A'
  let b: char = c'Z'
  let r1: boolean = a < b
  let r2: boolean = a > b
  let r3: boolean = a == b
  let r4: boolean = a != b
}
