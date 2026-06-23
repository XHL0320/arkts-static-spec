/**
 * @id EXP2_17_11_2_004_PASS_FINAL_METHOD_DEEP_INHERIT
 * @expect compile-pass
 * @section 17.11.2
 * @design 多层继承中 final 方法传递：验证 final 方法在多层级继承链中可以被继承但不能被重写
 * @note 正向用例：GrandParent -> Parent -> Child 三层继承，Parent 不重写，Child 也不重写
 */
class GrandParent {
  final greet(): string {
    return "Hello from GrandParent"
  }
}

class Parent extends GrandParent {
  // 不重写 greet，合法
  sayHi(): string {
    return "Hi from Parent"
  }
}

class Child extends Parent {
  // 不重写 greet，合法
  sayHey(): string {
    return "Hey from Child"
  }
}

function testFinalMethodDeepInherit(): void {
  let gp: GrandParent = new GrandParent()
  console.log(gp.greet())
  let p: Parent = new Parent()
  console.log(p.greet())
  console.log(p.sayHi())
  let c: Child = new Child()
  console.log(c.greet())
  console.log(c.sayHey())
}
