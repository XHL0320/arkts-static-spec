/*
 * @id SEM_15_08_00_016_PASS_TERNARY_narrowing
 * @expect compile-pass
 * @section 15.8
 * @design 规范 15.8：三元条件表达式中的类型收窄（智能类型转换）
 * @note 测试三元条件表达式中的智能类型转换
 */

// 测试三元条件表达式收窄
function test_ternary_narrowing(value: number | string): void {
  // 三元条件表达式中的类型收窄
  let result: string = typeof value === "string" ? value.toUpperCase() : value.toString()
  console.log("Ternary result: " + result)
  
  // 嵌套三元条件表达式
  let x: number | string | boolean = 42
  let y: string = typeof x === "number" ? "number: " + (x * 2).toString() :
                   typeof x === "string" ? "string: " + (x as string).toUpperCase() :
                   "boolean: " + (x as boolean).toString()
  console.log("Nested ternary result: " + y)
}

// 测试三元条件表达式中的智能类型
function test_ternary_smart_type(): void {
  let value: number | string | undefined = "hello"
  
  // 三元条件表达式中使用智能类型
  let length: number = value != undefined ? (typeof value === "string" ? value.length : 0) : 0
  console.log("Length: " + length)
  
  value = 42
  length = value != undefined ? (typeof value === "number" ? value : 0) : 0
  console.log("Length (number): " + length)
}
