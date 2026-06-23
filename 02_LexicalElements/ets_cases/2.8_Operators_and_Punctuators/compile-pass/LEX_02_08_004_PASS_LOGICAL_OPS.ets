/**
 * @id LEX_02_08_004_PASS_LOGICAL_OPS
 * @expect compile-pass
 * @section 2.8
 * @design 逻辑运算符 && || ! 在布尔类型上的使用
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testLogicalOps(): void {
  let a: boolean = true
  let b: boolean = false
  let r1: boolean = a && b
  let r2: boolean = a || b
  let r3: boolean = !a
  let r4: boolean = !(a && b) || !b
}
