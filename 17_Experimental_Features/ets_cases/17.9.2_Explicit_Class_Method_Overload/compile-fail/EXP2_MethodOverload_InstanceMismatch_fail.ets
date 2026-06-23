/**
 * @id EXP2_17_09_02_010_FAIL_INSTANCE_MISMATCH
 * @expect compile-fail
 * @section 17.9.2
 * @design 实例 overload 不能包含 static 方法 — 编译错误
 * @note 反向用例：实例 overload 中包含 static 方法
 */
class InstanceFail {
  m1(a: int): int { return a }
  static m2(a: string): int { return a.length }
  overload busy { m1, m2 }
}
