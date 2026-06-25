/**
 * @id EXP2_MethodOverload_OverrideMissing_fail
 * @expect compile-fail
 * @section 17.9.2
 * @design 子类覆盖 overload 但缺少父类方法 — 编译错误
 * @note 反向用例：子类 overload 列表不完整
 */
class BaseClass {
  methodA(a: int): string { return "a" }
  methodB(a: string): string { return "b" }
  overload process { methodA, methodB }
}

class BadOverride extends BaseClass {
  methodA(a: int): string { return "override-a" }
  // methodB 缺失 — 应编译失败
  overload process { methodA }
}
