/**
 * @id CLS_09_09_013_RUNTIME_MULTI_LEVEL_DEFAULT_CTOR
 * @expect runtime
 * @section 9.9.3
 * @design 多层继承默认构造器链式调用，各层字段初始化器按从父到子的顺序执行
 * @note 运行时用例：三层继承无显式构造器，验证字段初始化顺序
 */
class GrandParent {
  gpVal: int = 100
}
class Parent extends GrandParent {
  pVal: string = "parent"
}
class Child extends Parent {
  cVal: int = 300
}
function main(): void {
  let obj: Child = new Child()
  if (obj.gpVal != 100) { throw new Error("GrandParent field gpVal should be 100") }
  if (obj.pVal != "parent") { throw new Error("Parent field pVal should be parent") }
  if (obj.cVal != 300) { throw new Error("Child field cVal should be 300") }
  console.log("verified")
}
