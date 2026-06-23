/*
 * @id SEM_15_06_00_002_PASS_SPREAD_expression
 * @expect compile-pass
 * @section 15.6
 * @design 规范 15.6：调用参数兼容性检查，包括 spread 表达式的线性化
 * @note 测试 spread 表达式的线性化
 */

// 测试 spread 表达式的线性化
function test_spread_expression(): void {
  let arr1: number[] = [1, 2, 3]
  let arr2: number[] = [4, 5, 6]
  
  // spread 表达式线性化
  let result1: number[] = [...arr1, ...arr2]
  console.log("Spread result: " + result1)  // 输出: [1, 2, 3, 4, 5, 6]
  
  // 函数调用中的 spread 表达式
  function add(a: number, b: number, c: number): number {
    return a + b + c
  }
  
  let args: number[] = [1, 2, 3]
  let result2: number = add(...args)
  console.log("Spread in function call: " + result2)  // 输出: 6
  
  console.log("Spread expression test passed")
}
