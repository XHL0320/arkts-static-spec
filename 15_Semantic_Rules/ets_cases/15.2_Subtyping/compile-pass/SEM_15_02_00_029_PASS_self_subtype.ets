/*
 * @id SEM_15_02_00_029_PASS_self_subtype
 * @expect compile-pass
 * @section 15.2
 * @design 规范 15.2：类型 S 是自身的子类型
 * @note 测试类型自身的子类型关系：A 类型实例可赋值给 A 类型变量
 */

// 测试类型自身的子类型关系
class A {
  x: int = 0
}

function test_self_subtype(): void {
  let a1: A = new A()
  let a2: A = a1  // OK: A <: A，自身赋值

  console.log(`${a2.x}`)
}
