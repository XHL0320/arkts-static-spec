/**
 * @id EXP_07_28_01_002_PASS_FLOAT_EQ
 * @expect compile-pass
 * @section 7.28.1
 * @design float/double IEEE 754 相等比较
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testFloatEq(): void {
  let a: double = 3.14; let b: double = 3.14
  let e1: boolean = a == b; let e2: boolean = 5.0 == 5
  let pz: double = 0.0; let nz: double = -0.0
  let e3: boolean = pz == nz
  console.log(e1.toString(), e2.toString(), e3.toString())
}
