/*
 * @id SEM_15_11_00_001_PASS_FUNCTION_overload_resolution
 * @expect compile-pass
 * @section 15.11
 * @design 规范 15.11：重载解析选择第一个匹配的重载实体
 * @note 测试函数重载解析
 */

// 测试函数重载解析
function foo(n: number): string {
  return "number: " + n
}

function foo(s: string): string {
  return "string: " + s
}

function test_function_overload_resolution(): void {
  // 重载解析：选择第一个匹配的函数
  let result1: string = foo(42)  // 调用 foo(n: number)
  console.log(result1)  // 输出: "number: 42"
  
  let result2: string = foo("hello")  // 调用 foo(s: string)
  console.log(result2)  // 输出: "string: hello"
  
  console.log("Function overload resolution test passed")
}
