/**
 * @id EXP2_17_11_2_009_FAIL_DEEP_OVERRIDE_FINAL
 * @expect compile-fail
 * @section 17.11.2
 * @design 多层继承中底层类重写顶层 final 方法：验证底层类不能重写继承链上的 final 方法
 * @note 反向用例：GrandParent final -> Parent 不重写 -> Child 重写，验证产生编译错误
 */
class GrandParent {
  final report(): string {
    return "GP report"
  }
}

class Parent extends GrandParent {
  // Parent 不重写 final 方法
  getInfo(): string {
    return "Parent info"
  }
}

class Child extends Parent {
  // Child 尝试重写 final 方法
  report(): string {
    return "Child report"
  }
}

function testDeepOverrideFinal(): void {
  let c: Child = new Child()
  console.log(c.report())
}
