/**
 * @id LEX_02_08_002_PASS_RELATIONAL_OPS
 * @expect compile-pass
 * @section 2.8
 * @design 关系运算符 < > <= >= 应用于数值类型
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testRelationalOps(): void {
  let a: number = 5
  let b: number = 10
  let r1: boolean = a < b
  let r2: boolean = a > b
  let r3: boolean = a <= b
  let r4: boolean = a >= b
}
