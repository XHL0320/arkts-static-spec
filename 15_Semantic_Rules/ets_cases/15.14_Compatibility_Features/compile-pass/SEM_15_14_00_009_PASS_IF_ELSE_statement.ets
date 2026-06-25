/*
 * @id SEM_15_14_00_009_PASS_IF_ELSE_statement
 * @expect compile-pass
 * @section 15.14
 * @design 规范 15.14.1：if-else 语句的扩展语义（真值检查）
 * @note 测试 if-else 语句的扩展语义
 */

// 测试 if-else 语句的扩展语义
function test_if_else_statement_extended(): void {
  // 数字的真值检查
  let num: number = 10
  if (num) {
    console.log("If-else (number): " + num)  // 输出：10
  } else {
    console.log("This won't execute")
  }
  
  let zero: number = 0
  if (zero) {
    console.log("This won't execute")
  } else {
    console.log("Zero is falsy")  // 输出：Zero is falsy
  }
  
  // 字符串的真值检查
  let str: string = "hello"
  if (str) {
    console.log("If-else (string): " + str)  // 输出：hello
  } else {
    console.log("This won't execute")
  }
  
  let empty: string = ""
  if (empty) {
    console.log("This won't execute")
  } else {
    console.log("Empty string is falsy")  // 输出：Empty string is falsy
  }
  
  // 布尔值的真值检查
  let bool: boolean = true
  if (bool) {
    console.log("If-else (boolean): " + bool)  // 输出：true
  } else {
    console.log("This won't execute")
  }
  
  console.log("If-else statement extended semantics test passed")
}