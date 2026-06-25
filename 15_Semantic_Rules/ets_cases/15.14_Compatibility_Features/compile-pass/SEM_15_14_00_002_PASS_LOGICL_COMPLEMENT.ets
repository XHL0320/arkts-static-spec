/*
 * @id SEM_15_14_00_002_PASS_LOGICL_COMPLEMENT
 * @expect compile-pass
 * @section 15.14
 * @design 规范 15.14.1：逻辑补码的扩展语义
 * @note 测试逻辑补码
 */

// 测试逻辑补码
function test_logical_complement(): void {
  // 布尔值的逻辑补码
  let bool: boolean = true
  let notBool: boolean = !bool
  console.log("Logical complement (boolean): " + notBool)  // 输出: false
  
  // 数字的逻辑补码
  let num: number = 10
  let notNum: boolean = !num
  console.log("Logical complement (number): " + notNum)  // 输出: false (因为 10 是真值)
  
  let zero: number = 0
  let notZero: boolean = !zero
  console.log("Logical complement (zero): " + notZero)  // 输出: true (因为 0 是假值)
  
  // 字符串的逻辑补码
  let str: string = "hello"
  let notStr: boolean = !str
  console.log("Logical complement (string): " + notStr)  // 输出: false (因为 "hello" 是真值)
  
  let empty: string = ""
  let notEmpty: boolean = !empty
  console.log("Logical complement (empty): " + notEmpty)  // 输出: true (因为 "" 是假值)
  
  console.log("Logical complement test passed")
}