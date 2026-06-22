/**
 * @id CON_06_03_02_002_PASS_CHAR_INT_RELATIONAL
 * @expect compile-pass
 * @section 6.3.2
 * @design char < int: char widening 为 int 后比较 (char,int→int)
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testCharIntRelational(): void {
  let c: char = c'Z'
  let i: int = 100
  let r1: boolean = c < i
  let r2: boolean = c > i
  let r3: boolean = c <= i
  let r4: boolean = c >= i
}
