/*
 * @id SEM_15_14_011_PASS_TRUTHINESS_table
 * @expect compile-pass
 * @section 15.14.1
 * @design 规范 15.14.1：真值表（truthiness table）
 * @note 测试真值表的扩展语义
 */

// 测试真值表
function test_truthiness_table(): void {
  // 数字类型的真值
  let n1: number = 10
  let n2: number = 0
  let n3: number = NaN
  
  if (n1) console.log("10 is truthy")  // 输出：10 is truthy
  if (!n2) console.log("0 is falsy")  // 输出：0 is falsy
  if (!n3) console.log("NaN is falsy")  // 输出：NaN is falsy
  
  // 字符串类型的真值
  let s1: string = "hello"
  let s2: string = ""
  
  if (s1) console.log("'hello' is truthy")  // 输出：'hello' is truthy
  if (!s2) console.log("'' is falsy")  // 输出：'' is falsy
  
  // 布尔类型的真值
  let b1: boolean = true
  let b2: boolean = false
  
  if (b1) console.log("true is truthy")  // 输出：true is truthy
  if (!b2) console.log("false is falsy")  // 输出：false is falsy
  
  // null 和 undefined 的真值
  let n: null = null
  let u: undefined = undefined
  
  if (!n) console.log("null is falsy")  // 输出：null is falsy
  if (!u) console.log("undefined is falsy")  // 输出：undefined is falsy
    
  console.log("Truthiness table test passed")
}