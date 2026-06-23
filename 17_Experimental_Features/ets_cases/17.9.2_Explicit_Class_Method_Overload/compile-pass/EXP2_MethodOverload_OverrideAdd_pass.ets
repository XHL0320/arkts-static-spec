/**
 * @id EXP2_17_09_02_006_PASS_OVERRIDE_ADD
 * @expect compile-pass
 * @section 17.9.2
 * @design 子类覆盖 overload 时可添加新方法
 * @note 正向用例：子类覆盖 overload 并添加额外方法
 */
class BaseWithExtra {
  methodA(a: int): string { return "base-int:" + a }
  methodB(a: string): string { return "base-str:" + a }
  overload process { methodA, methodB }
}

class DerivedWithExtra extends BaseWithExtra {
  methodA(a: int): string { return "derived-int:" + a }
  methodB(a: string): string { return "derived-str:" + a }
  methodC(a: boolean): string { return "derived-bool:" + a }
  // 子类添加了 methodC
  overload process { methodA, methodB, methodC }
}
