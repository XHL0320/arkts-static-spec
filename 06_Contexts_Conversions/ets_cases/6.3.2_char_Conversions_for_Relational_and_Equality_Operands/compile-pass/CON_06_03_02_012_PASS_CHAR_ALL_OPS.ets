/**
 * @id CON_06_03_02_012_PASS_CHAR_ALL_OPS
 * @expect compile-pass
 * @section 6.3.2
 * @design char 与全部数值类型的全部六种关系/相等运算符
 * @note 正向用例：验证 char 的全面 widening 比较编译通过
 */
function testCharAllOps(c: char, b: byte, i: int, l: long, d: double): void {
  let r1: boolean = c < b
  let r2: boolean = c < i
  let r3: boolean = c < l
  let r4: boolean = c < d
  let r5: boolean = c > b
  let r6: boolean = c > i
  let r7: boolean = c > l
  let r8: boolean = c > d
  let r9: boolean = c <= b
  let r10: boolean = c >= i
  let r11: boolean = c == l
  let r12: boolean = c != d
}
