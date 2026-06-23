/**
 * @id EXP2_17_07_02_005_PASS_VOID_RETURN
 * @expect compile-pass
 * @section 17.7.2
 * @design $_instantiate 返回 void：声明为 void 返回类型的 $_instantiate，短格式调用合法
 * @note 正向用例：验证 void 返回型的 $_instantiate 编译通过
 */
let gFactory5Value: string = ""

class MyFactory5Wrapper {
  constructor() {}

  static $_instantiate(__factory: () => MyFactory5Wrapper, label: string): void {
    gFactory5Value = label
    let unused: MyFactory5Wrapper = __factory()
  }
}

function testVoidReturn(): void {
  MyFactory5Wrapper("test-label")
}
