/**
 * @id CON_06_03_02_004_PASS_CHAR_DOUBLE_RELATIONAL
 * @expect compile-pass
 * @section 6.3.2
 * @design char < double: char widening 为 double 后比较
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testCharDoubleRelational(): void {
  let c: char = c'K'
  let d: double = 80.5
  let r1: boolean = c < d
  let r2: boolean = c > d
  let r3: boolean = c <= d
  let r4: boolean = c >= d
}
