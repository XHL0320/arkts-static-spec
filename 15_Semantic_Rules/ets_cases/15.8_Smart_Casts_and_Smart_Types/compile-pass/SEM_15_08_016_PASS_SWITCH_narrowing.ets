/*
 * @id SEM_15_08_016_PASS_SWITCH_narrowing
 * @expect compile-pass
 * @section 15.8
 * @design 规范 15.8：switch 语句中的类型收窄（智能类型转换）
 * @note 测试 switch 语句中的智能类型转换
 */

// 测试 switch 语句中的类型收窄
function test_switch_narrowing(value: number | string | boolean): void {
  // switch 语句中的类型收窄
  switch (typeof value) {
    case "number":
      // 在这个分支中，value 的智能类型是 number
      let doubled: number = value * 2
      console.log("Number: " + doubled)
      break
    case "string":
      // 在这个分支中，value 的智能类型是 string
      let upper: string = value.toUpperCase()
      console.log("String: " + upper)
      break
    case "boolean":
      // 在这个分支中，value 的智能类型是 boolean
      let notV: boolean = !value
      console.log("Boolean: " + notV)
      break
    default:
      console.log("Unknown type")
  }
}

// 测试 switch 语句中的联合类型收窄
function test_switch_union_narrowing(value: number | string | undefined): void {
  if (value != undefined) {
    // value 的智能类型是 number | string
    switch (typeof value) {
      case "number":
        console.log("Number: " + (value * 2))
        break
      case "string":
        console.log("String: " + value.toUpperCase())
        break
    }
  }
}