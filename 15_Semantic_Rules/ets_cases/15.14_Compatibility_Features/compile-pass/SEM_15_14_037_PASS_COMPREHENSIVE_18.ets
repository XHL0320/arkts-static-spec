/*
 * @id SEM_15_14_037_PASS_COMPREHENSIVE_18
 * @expect compile-pass
 * @section 15.14.1
 * @design 规范 15.14.1：综合测试扩展条件表达式的各种情况
 * @note 综合测试扩展条件表达式的各种情况
 */

// 综合测试扩展条件表达式
function test_comprehensive_extended_conditional_18(): void {
  // 测试条件表达式中的类型转换
  let x: number | string = 42
  
  // 条件表达式中的类型转换
  let result: string = typeof x === "string" ? x : x.toString()
  console.log("Comprehensive test 18 (conditional): " + result)
    
  // 测试逻辑表达式中的类型转换
  let y: number | string | null = "hello"
    
  // 逻辑表达式中的类型转换
  let result2: boolean = (typeof y === "string") && (y.length > 0)
  console.log("Comprehensive test 18 (logical): " + result2)
    
  // 测试循环中的类型转换
  let z: number | string = 42
    
  // 循环中的类型转换
  while (typeof z === "number") {
    console.log("Comprehensive test 18 (while): " + (z * 2))
    break
  }
}

// 运行测试
test_comprehensive_extended_conditional_18()