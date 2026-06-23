/*
 * @id SEM_15_14_020_PASS_COMPREHENSIVE
 * @expect compile-pass
 * @section 15.14.1
 * @design 规范 15.14.1：综合测试扩展条件表达式
 * @note 综合测试扩展条件表达式的各种情况
 */

// 综合测试扩展条件表达式
function test_comprehensive_extended_conditional(): void {
  // 综合测试：数字、字符串、布尔值、null、undefined
  let value: number | string | boolean | null | undefined = 42
  
  // 使用扩展条件表达式
  let result: string = value ? "truthy" : "falsy"
  console.log("Comprehensive test 1: " + result)
  
  value = "hello"
  result = value ? "truthy" : "falsy"
  console.log("Comprehensive test 2: " + result)
  
  value = true
  result = value ? "truthy" : "falsy"
  console.log("Comprehensive test 3: " + result)
  
  value = null
  result = value ? "truthy" : "falsy"
  console.log("Comprehensive test 4: " + result)
  
  value = undefined
  result = value ? "truthy" : "falsy"
  console.log("Comprehensive test 5: " + result)
  
  console.log("Comprehensive extended conditional test passed")
}