/*
 * @id SEM_15_14_00_004_PASS_CONDITIONAL_OR
 * @expect compile-pass
 * @section 15.14.1
 * @design 规范 15.14.1：条件或表达式的扩展语义
 * @note 测试条件或表达式
 */

// 测试条件或表达式
function test_conditional_or(): void {
  // 数字的条件或
  let num: number = 10
  let result1: number | string = num || "truthy"
  console.log("Conditional OR (number): " + result1)  // 输出: 10
  
  let zero: number = 0
  let result2: number | string = zero || "falsy"
  console.log("Conditional OR (zero): " + result2)  // 输出: "falsy"
  
  // 字符串的条件或
  let str: string = "hello"
  let result3: string | boolean = str || false
  console.log("Conditional OR (string): " + result3)  // 输出: "hello"
  
  let empty: string = ""
  let result4: string | boolean = empty || true
  console.log("Conditional OR (empty): " + result4)  // 输出: true
    
  console.log("Conditional OR test passed")
}