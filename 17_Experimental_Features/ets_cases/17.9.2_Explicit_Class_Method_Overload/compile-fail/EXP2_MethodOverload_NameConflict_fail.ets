/**
 * @id EXP2_17_09_02_015_FAIL_OVERLOAD_NAME_CONFLICT
 * @expect compile-fail
 * @section 17.9.2
 * @design overload 名与方法同名但方法不在列表中 — 编译错误
 * @note 反向用例：类中有方法 m，overload 也叫 m 但不含该方法
 */
class NameConflict {
  process(a: int): int { return a }
  helper(a: string): string { return a }
  // overload 名 "process" 与方法名同名但 process 不在列表中
  overload process { helper }
}
