/*
 * @id SEM_15_02_00_003_PASS_CLASS_to_object
 * @expect compile-pass
 * @section 15.2
 * @design 规范 15.2.1：没有 extends 子句的类 S，S <: Object
 * @note 测试类到 Object 的子类型关系
 */

// 测试没有 extends 子句的类是 Object 的子类型
class NoExtendsClass {
  value: number = 100
}

function test_class_to_object(): void {
  let obj: Object = new Object()
  let instance: NoExtendsClass = new NoExtendsClass()
  
  // NoExtendsClass 是 Object 的子类型，可以赋值给 Object 类型变量
  obj = instance  // OK: NoExtendsClass <: Object
  
  console.log(obj)
}
