/*
 * @id SEM_15_08_007_PASS_NESTED_IF_narrowing
 * @expect compile-pass
 * @section 15.8
 * @design 规范 15.8：嵌套 if 语句中的类型收窄（智能类型转换）
 * @note 测试嵌套 if 中的智能类型转换
 */

// 测试嵌套 if 收窄
function test_nested_if_narrowing(value: number | string | boolean): void {
  // 外层 if：检查是否为 number 或 string
  if (typeof value === "number" || typeof value === "string") {
    // 在这个分支中，value 的智能类型是 number | string
    
    // 内层 if：进一步收窄
    if (typeof value === "number") {
      // 在这个分支中，value 的智能类型是 number
      let doubled: number = value * 2
      console.log("Number doubled: " + doubled)
    } else {
      // 在这个分支中，value 的智能类型是 string
      let upper: string = value.toUpperCase()
      console.log("String upper: " + upper)
    }
  } else {
    // 在这个分支中，value 的智能类型是 boolean
    let notV: boolean = !value
    console.log("Boolean negated: " + notV)
  }
}

// 测试嵌套 if-else 收窄
function test_nested_if_else_narrowing(value: number | string | undefined): void {
  if (value != undefined) {
    // value 的智能类型是 number | string
    
    if (typeof value === "string") {
      // value 的智能类型是 string
      console.log("String: " + value.toUpperCase())
    } else {
      // value 的智能类型是 number
      console.log("Number: " + (value * 2))
    }
  } else {
    // value 的智能类型是 undefined
    console.log("Value is undefined")
  }
}
