/**
 * @id EXP_07_28_4_PASS_LONG_EQ
 * @expect compile-pass
 * @section 7.28
 * @design long类型相等比较
 * @note 正向用例：验证该特性编译通过的正确用法。
 */

function testLongEq(): void {
  let a: long = 100; let b: long = 100; let c: long = 200
  let r1: boolean = a == b; let r2: boolean = a != c
  console.log(r1.toString(), r2.toString())
}
