/**
 * @id EXP_07_27_001_PASS_RELATIONAL_BASIC
 * @expect compile-pass
 * @section 7.27
 * @design 基本关系运算 int 类型（< > <= >=）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testRelationalBasic(): void {
  let a: int = 5
  let b: int = 10
  let c1: boolean = a < b
  let c2: boolean = a > b
  let c3: boolean = a <= b
  let c4: boolean = a >= b
  let c5: boolean = a <= a
  let c6: boolean = a >= a
  console.log(c1.toString(), c2.toString(), c3.toString(), c4.toString())
}
