/*
 * @id SEM_15_14_00_003_PASS_CONDITIONAL_AND
 * @expect compile-pass
 * @section 15.14
 * @design 规范 15.14.1：条件与表达式的扩展语义
 * @note 测试条件与表达式
 */

// 测试条件与表达式
function test_conditional_and(): void {
  // 数字的条件与
  let num: number = 10
  let result1: number | boolean = num && "truthy"
  console.log("Conditional AND (number): " + result1)  // 输出: "truthy"
  
  let zero: number = 0
  let result2: number | boolean = zero && "truthy"
  console.log("Conditional AND (zero): " + result2)  // 输出: 0
  
  // 字符串的条件与
  let str: string = "hello"
  let result3: string | boolean = str && "truthy"
  console.log("Conditional AND (string): " + result3)  // 输出: "truthy"
  
  let empty: string = ""
  let result4: string | boolean = empty && "truthy"
  console.log("Conditional AND (empty): " + result4)  // 输出: ""
  
  console.log("Conditional AND test passed")
}