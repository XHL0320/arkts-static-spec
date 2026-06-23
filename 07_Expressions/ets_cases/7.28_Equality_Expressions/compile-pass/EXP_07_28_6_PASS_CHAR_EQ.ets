/**
 * @id EXP_07_28_6_PASS_CHAR_EQ
 * @expect compile-pass
 * @section 7.28
 * @design char类型相等比较
 * @note 正向用例：验证char类型相等比较编译通过
 */
function testCharEq(): void {
  let a: char = c'a'; let b: char = c'a'; let r1: boolean = a == b
  let c: char = c'b'; let r2: boolean = a != c
  console.log(r1.toString(), r2.toString())
}
