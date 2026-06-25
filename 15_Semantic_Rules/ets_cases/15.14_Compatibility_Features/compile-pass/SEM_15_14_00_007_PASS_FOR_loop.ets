/*
 * @id SEM_15_14_00_007_PASS_FOR_loop
 * @expect compile-pass
 * @section 15.14
 * @design 规范 15.14.1：for 循环的扩展语义（真值检查）
 * @note 测试 for 循环的扩展语义
 */

// 测试 for 循环的扩展语义
function test_for_loop_extended(): void {
  // 数字的真值检查
  for (let i = 10; i; i--) {
    console.log("For loop (number): " + i)
  }
  // 输出: 10, 9, 8, ..., 1
  
  // 字符串的真值检查
  let str: string = "hello"
  for (; str; ) {
    console.log("For loop (string): " + str)
    str = ""
    break  // 简化示例
  }
    
  console.log("For loop extended semantics test passed")
}