/*
 * @id SEM_15_02_101_FAIL_CLASS_assign_superclass_to_subclass
 * @expect compile-fail
 * @section 15.2.1
 * @design 规范 15.2.1：子类型关系是单向的，超类型不能赋值给子类型
 * @note 测试将超类实例赋值给子类型变量（应该编译失败）
 */

// 测试将超类赋值给子类型（编译失败）
class Base {
  name: string = "base"
}

class Derived extends Base {
  extra: number = 42
}

function test_assign_superclass_to_subclass(): void {
  let base: Base = new Base()
  let derived: Derived
  
  // 编译失败：Base 不是 Derived 的子类型
  derived = base  // Error: Type 'Base' is not assignable to type 'Derived'
}
