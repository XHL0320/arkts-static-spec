/*
 * @id SEM_15_02_00_012_PASS_LIT_string_literal_to_string
 * @expect compile-pass
 * @section 15.2
 * @design 规范 15.2.3：任何字符串字面量类型是 string 的子类型
 * @note 测试字符串字面量类型的子类型关系
 */

// 测试字符串字面量类型是 string 的子类型
interface Named {
  getName(): string
}

class Person implements Named {
  private name: string
  
  constructor(name: string) {
    this.name = name
  }
  
  getName(): string {
    return this.name
  }
}

function test_string_literal_subtype(): void {
  let s1: "hello" = "hello"
  let s2: string
  
  // 字符串字面量类型 "hello" 是 string 的子类型
  s2 = s1  // OK: "hello" <: string
  
  // 测试重写场景：字面量类型参数
  class Base {
    greet(p: "hello"): void {
      console.log(p)
    }
  }
  
  class Derived extends Base {
    override greet(p: string): void {
      console.log("Derived: " + p)
    }
  }
  
  let derived: Derived = new Derived()
  derived.greet("hello")  // OK: "hello" 可赋给 string
}
