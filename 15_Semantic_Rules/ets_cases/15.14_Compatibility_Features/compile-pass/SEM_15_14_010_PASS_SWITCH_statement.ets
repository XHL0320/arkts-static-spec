/*
 * @id SEM_15_14_010_PASS_SWITCH_statement
 * @expect compile-pass
 * @section 15.14.1
 * @design 规范 15.14.1：switch 语句的扩展语义（真值检查）
 * @note 测试 switch 语句的扩展语义
 */

// 测试 switch 语句的扩展语义
function test_switch_statement_extended(): void {
  // 数字的真值检查
  let num: number = 10
  switch (num) {
    case 10:
      console.log("Switch (number): " + num)
      break
    default:
      console.log("Default")
  }
  
  let zero: number = 0
  switch (zero) {
    case 0:
      console.log("Switch (zero): " + zero)
      break
    default:
      console.log("Default")
  }
  
  // 字符串的真值检查
  let str: string = "hello"
  switch (str) {
    case "hello":
      console.log("Switch (string): " + str)
      break
    default:
      console.log("Default")
  }
  
  let empty: string = ""
  switch (empty) {
    case "":
      console.log("Switch (empty): empty string")
      break
    default:
      console.log("Default")
  }
  
  console.log("Switch statement extended semantics test passed")
}