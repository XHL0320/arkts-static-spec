/**
 * @id ENM_11_04_001_RUNTIME_VALUES_METHODS
 * @expect runtime
 * @section 11.4
 * @design 枚举静态方法: values/getValueOf/fromValue
 * @note 运行时用例
 */
enum Color { Red, Green, Blue = 5 }

function main(): void {
  let colors: FixedArray<Color> = Color.values()
  if (colors.length != 3) throw new Error("values length failed")
  if (colors[0] != Color.Red) throw new Error("first should be Red")

  let red: Color = Color.getValueOf("Red")
  if (red != Color.Red) throw new Error("getValueOf Red failed")

  let b: Color = Color.fromValue(5)
  if (b != Color.Blue) throw new Error("fromValue 5 should be Blue")

  console.log("enum static methods verified")
}