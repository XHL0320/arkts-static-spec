/**
 * @id EXP_07_32_002_PASS_ASSIGN_FIELD
 * @expect compile-pass
 * @section 7.32
 * @design 字段赋值
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
class Container { value: int = 0 }
function testAssignField(): void {
  let c: Container = new Container()
  c.value = 42
  console.log(c.value.toString())
}
