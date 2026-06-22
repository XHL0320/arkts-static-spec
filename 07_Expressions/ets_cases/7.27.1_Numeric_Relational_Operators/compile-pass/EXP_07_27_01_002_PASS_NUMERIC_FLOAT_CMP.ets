/**
 * @id EXP_07_27_01_002_PASS_NUMERIC_FLOAT_CMP
 * @expect compile-pass
 * @section 7.27.1
 * @design 验证float/double类型操作数之间的关系运算符编译通过，执行IEEE 754浮点比较
 * @note 正向用例：验证浮点类型关系比较编译通过的正确用法
 */
function testNumericFloatCmp(): void {
  let f1: float = 3.14
  let f2: float = 2.71
  let d1: double = 3.1415926535
  let d2: double = 2.7182818284

  // float < float
  let r1: boolean = f1 < f2     // 3.14 < 2.71, false
  let r2: boolean = f2 < f1     // 2.71 < 3.14, true

  // double < double
  let r3: boolean = d1 < d2     // false
  let r4: boolean = d2 < d1     // true

  // float and double comparisons
  let r5: boolean = f1 > f2     // true
  let r6: boolean = f1 >= f2    // true
  let r7: boolean = f2 <= f1    // true
  let r8: boolean = d1 >= d2   // true
  let r9: boolean = d1 > d2     // true

  console.log(r1.toString() + r2.toString() + r3.toString() +
              r4.toString() + r5.toString() + r6.toString() +
              r7.toString() + r8.toString() + r9.toString())
}
