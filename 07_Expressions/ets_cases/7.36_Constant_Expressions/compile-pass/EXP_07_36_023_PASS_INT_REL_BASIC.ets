/**
 * @id EXP_07_36_023_PASS_INT_REL_BASIC
 * @expect compile-pass
 * @section 7.36
 * @design Constant_Expressions中int关系运算编译通过
 * @note 对抗用例: Constant_Expressions中int关系运算类型正确可编译
 */
function testGeneric(): void {
  let a: int = 10; let b: int = 20
  let r1: boolean = a < b; let r2: boolean = a <= b
  console.log(r1.toString(), r2.toString())
}






