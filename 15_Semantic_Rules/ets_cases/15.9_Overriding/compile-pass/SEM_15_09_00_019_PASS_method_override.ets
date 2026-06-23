/*
 * @id SEM_15_09_00_019_PASS_method_override
 * @expect compile-pass
 * @section 15.9
 * @design 规范 15.9：子类方法覆写基类方法
 * @note 测试子类使用 override 关键字覆写基类方法
 */

// 测试方法覆写
class Base {
  greet(): string {
    return "base"
  }
}

class Derived extends Base {
  override greet(): string {
    return "derived"
  }
}

function test_method_override(): void {
  let d: Derived = new Derived()

  // 派生类调用覆写方法
  console.log(d.greet())
}
