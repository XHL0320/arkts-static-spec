/*
 * @id SEM_15_12_00_001_PASS_GENERIC_erasure
 * @expect compile-pass
 * @section 15.12
 * @design 规范 15.12：泛型类型擦除规则
 * @note 测试泛型类型擦除
 */

// 测试泛型类型擦除
class Container<T> {
  value: T
  
  constructor(v: T) {
    this.value = v
  }
}

function test_generic_erasure(): void {
  let containerNumber: Container<number> = new Container<number>(42)
  let containerString: Container<string> = new Container<string>("hello")
    
  // 在运行时，Container<number> 和 Container<string> 都被擦除为 Container
  // 注意：ArkTS 的类型擦除行为可能不同于 Java
    
  console.log("Generic erasure test passed")
}

// 测试泛型函数类型擦除
function identity<T>(value: T): T {
  return value
}

function test_generic_function_erasure(): void {
  let num: number = identity<number>(42)
  let str: string = identity<string>("hello")
    
  // 在运行时，identity<number> 和 identity<string> 都被擦除
    
  console.log("Generic function erasure test passed")
}