/**
 * @id CON_06_03_02_003_PASS_CHAR_LONG_RELATIONAL
 * @expect compile-pass
 * @section 6.3.2
 * @design char < long: char widening 为 long 后比较
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testCharLongRelational(): void {
  let c: char = c'X'
  let l: long = 100
  let r1: boolean = c < l
  let r2: boolean = c > l
  let r3: boolean = c <= l
  let r4: boolean = c >= l
}
