/**
 * @id EXP2_17_01_002_PASS_CHAR_ASSIGN_TO_OBJECT
 * @expect compile-pass
 * @section 17.1
 * @design char 是 Object 的子类型：char 变量可以赋值给 Object 类型变量
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testCharAssignToObject(): void {
  let c: char = c'A'
  let o: Object = c
  let o2: Object = c'B'
  console.log(o)
  console.log(o2)
}
