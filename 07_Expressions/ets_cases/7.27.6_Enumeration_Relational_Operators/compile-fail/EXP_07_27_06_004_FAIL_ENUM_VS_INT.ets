/**
 * @id EXP_07_27_06_004_FAIL_ENUM_VS_INT
 * @expect compile-fail
 * @section 7.27.6
 * @design 枚举类型与 int 关系比较应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
enum Color { RED, GREEN, BLUE }
function testEnumVsIntFail(): void {
  let a: Color = Color.RED; let b: int = 1
  let bad: boolean = a < b; console.log(bad.toString())
}
