/**
 * @id ENM_11_012_RUNTIME_BASIC_OPS
 * @expect runtime
 * @section 11
 * @design 枚举基本成员值和相等比较运行时验证
 * @note 运行时用例
 */
enum Color { Red, Green, Blue = 5 }

function main(): void {
  let c: Color = Color.Red
  if (c != Color.Red) throw new Error("Red should equal Red")
  if (c == Color.Green) throw new Error("Red should not equal Green")
  if (Color.Blue == Color.Red) throw new Error("Blue should not equal Red")
  console.log("basic enum ops verified")
}
