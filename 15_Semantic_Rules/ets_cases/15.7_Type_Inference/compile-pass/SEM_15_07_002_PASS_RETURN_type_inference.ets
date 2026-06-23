/*
 * @id SEM_15_07_002_PASS_RETURN_type_inference
 * @expect compile-pass
 * @section 15.7.2
 * @design 规范 15.7.2：返回类型可以从函数体中的返回语句推断
 * @note 测试返回类型推断
 */

// 测试返回类型推断
function test_return_type_inference(): void {
  // 没有返回语句，推断为 void
  function foo1(): void {
    console.log("foo1")
  }
  
  // 所有返回语句有相同的表达式类型 R，推断为 R
  function foo2() {
    return "hello"
  }
  let result2: string = foo2()  // OK: 推断返回类型是 string
  
  // 有多个返回语句，推断为联合类型
  function foo3(condition: boolean) {
    if (condition) {
      return 1
    } else {
      return "hello"
    }
  }
  let result3: number | string = foo3(true)  // OK: 推断返回类型是 number | string
  
  // 有 throw 语句，推断为 never
  function foo4(): never {
    throw new Error("error")
  }
    
  console.log("Return type inference test passed")
}

// 测试异步函数的返回类型推断
async function test_async_return_type_inference(): Promise<void> {
  // 异步函数，推断返回类型是 Promise<T>
  async function foo() {
    return 42
  }
    
  let result: Promise<number> = foo()  // OK: 推断返回类型是 Promise<number>
    
  console.log("Async return type inference test passed")
}