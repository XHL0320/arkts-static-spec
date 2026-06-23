/*
 * @id SEM_15_14_00_005_PASS_TERNARY_conditional
 * @expect compile-pass
 * @section 15.14.1
 * @design 规范 15.14.1：三元条件表达式的扩展语义
 * @note 测试三元条件表达式
 */

// 测试三元条件表达式
function test_ternary_conditional(): void {
  // 数字的三元条件
  let num: number = 10
  let result1: string = num ? "truthy" : "falsy"
  console.log("Ternary (number): " + result1)  // 输出: "truthy"
  
  let zero: number = 0
  let result2: string = zero ? "truthy" : "falsy"
  console.log("Ternary (zero): " + result2)  // 输出: "falsy"
  
  // 字符串的三元条件
  let str: string = "hello"
  let result3: number = str ? 1 : 0
  console.log("Ternary (string): " + result3)  // 输出: 1
  
  let empty: string = ""
  let result4: number = empty ? 1 : 0
  console.log("Ternary (empty): " + result4)  // 输出: 0
  
  // 嵌套三元条件
  let value: number | string = 42
  let result5: string = typeof value === "number" ? "number: " + (value as number).toString() : 
                     typeof value === "string" ? "string: " + (value as string).toUpperCase() : 
                     "unknown"
  console.log("Nested ternary: " + result5)
    
  console.log("Ternary conditional test passed")
}