/**
 * @id EXP2_17_07_002_PASS_BASIC_INVOKE_WITH_ARGS
 * @expect compile-pass
 * @section 17.7
 * @design 类声明 static $_invoke(a: int, b: int): int，类名可直接作为带参函数调用
 * @note 正向用例：验证静态 $_invoke 带参使类变为可调用，编译通过
 */
class AdderCallable {
  static $_invoke(a: int, b: int): int {
    return a + b
  }
}

function testCallableWithArgs(): void {
  let r: int = AdderCallable(10, 20)
  let r2: int = AdderCallable.$_invoke(10, 20)
}
