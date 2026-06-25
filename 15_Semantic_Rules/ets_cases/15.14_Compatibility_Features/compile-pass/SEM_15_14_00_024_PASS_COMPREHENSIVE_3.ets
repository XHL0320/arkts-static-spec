/*
 * @id SEM_15_14_00_024_PASS_COMPREHENSIVE_3
 * @expect compile-pass
 * @section 15.14
 * @design 规范 15.14.1：综合测试扩展条件表达式的各种情况
 * @note 综合测试扩展条件表达式的各种情况
 */

// 综合测试扩展条件表达式
function test_comprehensive_extended_conditional_3(): void {
  // 测试三元条件表达式中的类型收窄
  let value: number | string | boolean = 42
  
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