/**
 * @id EXP2_17_07_007_PASS_EXPLICIT_INVOKE_AND_INSTANTIATE
 * @expect compile-pass
 * @section 17.7
 * @design 显式调用形式 C.$_invoke() 和 C.$_instantiate() 也是合法调用
 * @note 正向用例：验证显式调用形式编译通过
 */
class ExplicitInvoke {
  static $_invoke(): string {
    return "called"
  }
}

class ExplicitInstantiate {
  static $_instantiate(): ExplicitInstantiate {
    return new ExplicitInstantiate()
  }
}

function testExplicitCalls(): void {
  let s: string = ExplicitInvoke.$_invoke()
  let obj: ExplicitInstantiate = ExplicitInstantiate.$_instantiate()
}
