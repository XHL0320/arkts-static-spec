/*
 * @id SEM_15_08_00_008_PASS_UNION_narrowing
 * @expect compile-pass
 * @section 15.8
 * @design 规范 15.8：联合类型变量的智能类型转换
 * @note 测试联合类型的类型收窄
 */

// 测试联合类型收窄
function test_union_narrowing(value: number | string | boolean): void {
  // 联合类型变量的类型收窄
  if (typeof value === "number") {
    // 在这个分支中，value 的智能类型是 number
    let doubled: number = value * 2
    console.log("Number: " + doubled)
  } else if (typeof value === "string") {
    // 在这个分支中，value 的智能类型是 string
    let upper: string = value.toUpperCase()
    console.log("String: " + upper)
  } else {
    // 在这个分支中，value 的智能类型是 boolean
    let notV: boolean = !value
    console.log("Boolean: " + notV)
  }
}

// 测试联合类型的智能类型转换
function test_union_smart_cast(): void {
  let x: number | string | undefined
  
  x = 42
  if (x != undefined) {
    // x 的智能类型是 number | string
    if (typeof x === "number") {
      console.log("Number: " + (x * 2))
    } else {
      console.log("String: " + x)
    }
  }
  
  x = "hello"
  if (x != undefined) {
    // x 的智能类型是 number | string
    if (typeof x === "string") {
      console.log("String: " + x.toUpperCase())
    } else {
      console.log("Number: " + (x + 1))
    }
  }
}
