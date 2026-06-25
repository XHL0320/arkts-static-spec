/*
 * @id SEM_15_14_00_001_PASS_EXTENDED_conditional
 * @expect compile-pass
 * @section 15.14
 * @design 规范 15.14.1：扩展条件表达式的语义
 * @note 测试扩展条件表达式
 */

// 测试扩展条件表达式
function test_extended_conditional(): void {
  // 数字的真值检查
  let num: number = 10
  if (num) {
    console.log("Number is truthy: " + num)  // 输出: Number is truthy: 10
  }
  
  let zero: number = 0
  if (!zero) {
    console.log("Zero is falsy")  // 输出: Zero is falsy
  }
  
  // 字符串的真值检查
  let str: string = "hello"
  if (str) {
    console.log("String is truthy: " + str)  // 输出: String is truthy: hello
  }
  
  let empty: string = ""
  if (!empty) {
    console.log("Empty string is falsy")  // 输出: Empty string is falsy
  }
  
  // 使用扩展条件表达式
  let result: string = num ? "truthy" : "falsy"
  console.log("Result: " + result)  // 输出: Result: truthy
    
  console.log("Extended conditional test passed")
}