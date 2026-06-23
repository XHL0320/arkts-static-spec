/**
 * @id CLS_09_09_015_RUNTIME_DEFAULT_CTOR_INHERIT_FIELD_INIT
 * @expect runtime
 * @section 9.9.3
 * @design 继承层次中默认构造器正确初始化各层多类型字段
 * @note 运行时用例：父子类均无显式构造器，验证多类型字段初始化器全部正确执行
 */
class Parent {
  a: int = 100
  b: string = "base"
  c: boolean = true
}
class Child extends Parent {
  x: int = 200
  y: string = "child"
  z: boolean = false
}
function main(): void {
  let obj: Child = new Child()
  if (obj.a != 100) { throw new Error("Parent.a should be 100") }
  if (obj.b != "base") { throw new Error("Parent.b should be base") }
  if (obj.c != true) { throw new Error("Parent.c should be true") }
  if (obj.x != 200) { throw new Error("Child.x should be 200") }
  if (obj.y != "child") { throw new Error("Child.y should be child") }
  if (obj.z != false) { throw new Error("Child.z should be false") }
  console.log("verified")
}
