/*
 * @id SEM_15_14_006_PASS_WHILE_loop
 * @expect compile-pass
 * @section 15.14.1
 * @design 规范 15.14.1：while 循环的扩展语义（真值检查）
 * @note 测试 while 循环的扩展语义
 */

// 测试 while 循环的扩展语义
function test_while_loop_extended(): void {
  // 数字的真值检查
  let num: number = 10
  while (num) {
    console.log("While loop (number): " + num)
    num--
    if (num == 0) break
  }
  // 输出: 10, 9, 8, ..., 1
  
  // 字符串的真值检查
  let str: string = "hello"
  while (str) {
    console.log("While loop (string): " + str)
    str = ""
    break  // 简化示例
  }
  
  console.log("While loop extended semantics test passed")
}