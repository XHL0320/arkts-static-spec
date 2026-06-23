/**
 * @id EXP_07_27_8_PASS_DOUBLE_FLOAT_CMP
 * @expect compile-pass
 * @section 7.27
 * @design double 与 float 比较
 * @note 正向用例：验证该特性编译通过的正确用法。
 */

function testDoubleFloatCmp(): void {
  let a: double = 3.14; let b: float = 2.71f; let r1: boolean = a > b; let r2: boolean = a >= b
  console.log(r1.toString(), r2.toString())
}
