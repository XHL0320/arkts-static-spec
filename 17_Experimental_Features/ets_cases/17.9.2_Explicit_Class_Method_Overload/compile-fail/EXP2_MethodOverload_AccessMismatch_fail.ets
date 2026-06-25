/**
 * @id EXP2_MethodOverload_AccessMismatch_fail
 * @expect compile-fail
 * @section 17.9.2
 * @design protected overload 不能包含 private 方法 — 编译错误
 * @note 反向用例：访问级别冲突
 */
class AccessFail {
  protected methodA(a: int): int { return a }
  private methodB(a: string): int { return a.length }
  protected overload process { methodA, methodB }
}
