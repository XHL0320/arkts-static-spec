/**
 * @id EXP_07_28_8_PASS_FLOAT_EQ_PRECISE
 * @expect compile-pass
 * @section 7.28
 * @design 浮点精确相等
 * @note 正向用例：验证该特性编译通过的正确用法。
 */

function testFloatEqPrecise(): void {
  let a: double = 1.5; let b: double = 1.5; let r: boolean = a == b
  console.log(r.toString())
}
