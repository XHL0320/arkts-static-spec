/*
 * @id SEM_15_09_00_007_PASS_CLASS_override_keyword
 * @expect compile-pass
 * @section 15.9.1
 * @design 规范 15.9.1：重写方法必须使用 override 关键字
 * @note 测试 override 关键字的使用
 */

// 测试 override 关键字的使用
class Base {
  method(): void {
    console.log("Base method")
  }
  
  getValue(): number {
    return 42
  }
}

class Derived extends Base {
  // 必须使用 override 关键字
  override method(): void {
    console.log("Derived method")
  }
  
  // 重写并返回协变类型
  override getValue(): number {
    return 100
  }
}

function test_override_keyword(): void {
  let derived: Derived = new Derived()
  
  // 调用重写的方法
  derived.method()
  
  let value: number = derived.getValue()
  console.log("Value: " + value)
  
  let base: Base = derived
  base.method()  // 运行时调用 Derived.method()
}
