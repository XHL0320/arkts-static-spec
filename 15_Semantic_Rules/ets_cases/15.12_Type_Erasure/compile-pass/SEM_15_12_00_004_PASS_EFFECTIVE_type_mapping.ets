/*
 * @id SEM_15_12_00_004_PASS_EFFECTIVE_type_mapping
 * @expect compile-pass
 * @section 15.12
 * @design 规范 15.12：有效类型映射规则
 * @note 测试有效类型映射
 */

class Container004<T> {
  value: T
  
  constructor(v: T) {
    this.value = v
  }
}

// 泛型identity函数（移至顶层避免嵌套函数错误）
function identity004<T>(value: T): T {
  return value
}

// 测试有效类型映射
function test_effective_type_mapping(): void {
  let containerNumber: Container004<number> = new Container004<number>(42)
  let containerString: Container004<string> = new Container004<string>("hello")
  console.log("Effective type mapping test passed")
}

// 测试类型参数的有效类型映射
function test_type_parameter_erasure(): void {
  let num: number = identity004<number>(42)
  let str: string = identity004<string>("hello")
  console.log("Type parameter erasure test passed")
}

// 测试联合类型的有效类型映射
function test_union_type_erasure(): void {
  let x: number | string = 42
  let y: number | string = "hello"
  
  if (typeof x === "number") {
    console.log("Number: " + ((x as number) * 2).toString())
  } else {
    console.log("String: " + (x as string).toUpperCase())
  }
    
  console.log("Union type erasure test passed")
}
