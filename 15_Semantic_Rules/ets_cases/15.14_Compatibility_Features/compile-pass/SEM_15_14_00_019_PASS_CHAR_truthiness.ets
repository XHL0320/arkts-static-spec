/*
 * @id SEM_15_14_00_019_PASS_CHAR_truthiness
 * @expect compile-pass
 * @section 15.14.1
 * @design 规范 15.14.1：char 类型的真值检查
 * @note 测试 char 类型的真值检查
 */

// 测试 char 类型的真值检查
function test_char_truthiness(): void {
  // char 类型的真值检查
  let c1: string = "a"
  if (c1) {
    console.log("char 'a' is truthy")  // 输出: char 'a' is truthy
  }
  
  let c2: string = "\u0000"
  if (!c2) {
    console.log("char '\\u0000' is falsy")  // 输出: char '\u0000' is falsy
  }
    
  console.log("Char truthiness test passed")
}