/*
 * @id SEM_15_08_003_PASS_CONTROL_FLOW_narrowing
 * @expect compile-pass
 * @section 15.8
 * @design 规范 15.8：基于控制流的类型收窄（智能类型转换）
 * @note 测试 if-else 和三元条件表达式中的类型收窄
 */

// 测试控制流类型收窄
function test_control_flow_narrowing(value: number | string | undefined): void {
  // if-else 收窄
  if (value != undefined) {
    // 在这个分支中，value 的智能类型是 number | string
    if (typeof value === "string") {
      // 在这个分支中，value 的智能类型是 string
      let upper: string = value.toUpperCase()
      console.log(upper)
    } else {
      // 在这个分支中，value 的智能类型是 number
      let doubled: number = value * 2
      console.log(doubled)
    }
  } else {
    // 在这个分支中，value 的智能类型是 undefined
    console.log("Value is undefined")
  }
  
  // 三元条件表达式收窄
  let result: string = typeof value === "string" ? value : "default"
  console.log(result)
}
