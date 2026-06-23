/**
 * @id CLS_09_09_011_PASS_SUBCLASS_DEFAULT_CTOR
 * @expect compile-pass
 * @section 9.9.3
 * @design 父类有无参public构造器时，无显式构造器的子类自动获得默认构造器
 * @note 正向用例：父类有可访问的无参构造器，子类默认构造器可正常调用super()
 */
class Parent {
  constructor() {}
  x: int = 1
}
class Child extends Parent {
  y: string = "child"
}
function test(): void {
  let obj: Child = new Child()
}
