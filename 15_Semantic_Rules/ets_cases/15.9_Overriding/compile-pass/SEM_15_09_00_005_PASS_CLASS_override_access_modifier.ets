/*
 * @id SEM_15_09_00_005_PASS_CLASS_override_access_modifier
 * @expect compile-pass
 * @section 15.9
 * @design 规范 15.9.1：重写方法的访问修饰符可以与父类方法相同，或将 protected 改为 public
 * @note 测试类方法重写的访问修饰符规则
 */

// 测试类方法重写的访问修饰符规则
class Base {
  public publicMethod(): void {
    console.log("Base public method")
  }
  
  protected protectedMethod(): void {
    console.log("Base protected method")
  }
}

class Derived extends Base {
  // 可以保持 public
  override publicMethod(): void {
    console.log("Derived public method")
  }
  
  // 可以将 protected 改为 public
  override protectedMethod(): void {
    console.log("Derived protected method (now public)")
  }
}

function test_override_access_modifier(): void {
  let derived: Derived = new Derived()
  
  // 调用重写的方法
  derived.publicMethod()
  derived.protectedMethod()  // OK: 现在是 public
  
  let base: Base = derived
  base.publicMethod()
  // base.protectedMethod()  // Error if called on Base reference (protected)
}
