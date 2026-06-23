/*
 * @id SEM_15_12_002_PASS_EFFECTIVE_type_mapping
 * @expect compile-pass
 * @section 15.12
 * @design 规范 15.12：有效类型映射规则
 * @note 测试有效类型映射
 */

// 测试有效类型映射
function test_effective_type_mapping(): void {
  // 泛型类型的有效类型映射
  class Container<T> {
    value: T
    
    constructor(v: T) {
      this.value = v
    }
  }
  
  let containerNumber: Container<number> = new Container<number>(42)
  let containerString: Container<string> = new Container<string>("hello")
    
  // 在运行时，Container<number> 和 Container<string> 的有效类型都是 Container
  console.log("Effective type mapping test passed")
}

// 测试类型参数的有效类型映射
function test_type_parameter_erasure(): void {
  function identity<T>(value: T): T {
    return value
  }
  
  let num: number = identity<number>(42)
  let str: string = identity<string>("hello")
    
  // 在运行时，identity<number> 和 identity<string> 的类型参数都被擦除
  console.log("Type parameter erasure test passed")
}

// 测试联合类型的有效类型映射
function test_union_type_erasure(): void {
  let x: number | string = 42
  let y: number | string = "hello"
    
  // 联合类型的有效类型映射
  if (typeof x === "number") {
    console.log("Number: " + (x * 2))
  } else {
    console.log("String: " + x.toUpperCase())
  }
    
  console.log("Union type erasure test passed")
}