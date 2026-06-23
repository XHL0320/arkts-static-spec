/**
 * @id EXP2_17_07_001_PASS_BASIC_INVOKE_NOARGS
 * @expect compile-pass
 * @section 17.7
 * @design 类声明 static $_invoke(): int 后，类名可直接作为函数调用 C()，等价于 C.$_invoke()
 * @note 正向用例：验证静态 $_invoke 无参使类变为可调用，编译通过
 */
class SimpleCallable {
  static $_invoke(): int {
    return 42
  }
}

function testCallable(): void {
  let r: int = SimpleCallable()
  let r2: int = SimpleCallable.$_invoke()
}
