/*
 * @id SEM_15_11_00_004_PASS_EXPLICIT_overload
 * @expect compile-pass
 * @section 15.11
 * @design 规范 15.11.1：显式重载声明允许开发者显式指定重载实体集
 * @note 测试显式重载声明
 */

// 测试显式重载声明
function fooNumber(n: number): string {
  return "number: " + n
}

function fooString(s: string): string {
  return "string: " + s
}

function fooBoolean(b: boolean): string {
  return "boolean: " + b
}

// 显式重载声明
overload foo { fooNumber, fooString, fooBoolean }

function test_explicit_overload(): void {
  // 重载解析：根据显式重载声明顺序选择
  let result1: string = foo(42)  // 调用 fooNumber
  console.log(result1)  // 输出: "number: 42"
  
  let result2: string = foo("hello")  // 调用 fooString
  console.log(result2)  // 输出: "string: hello"
    
  let result3: string = foo(true)  // 调用 fooBoolean
  console.log(result3)  // 输出: "boolean: true"
    
  console.log("Explicit overload test passed")
}
