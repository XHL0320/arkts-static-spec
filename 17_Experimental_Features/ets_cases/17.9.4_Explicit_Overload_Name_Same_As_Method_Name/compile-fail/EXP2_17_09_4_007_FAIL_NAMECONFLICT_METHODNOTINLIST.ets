/**
 * @id EXP2_17_09_4_007_FAIL_NAMECONFLICT_METHODNOTINLIST
 * @expect compile-fail
 * @section 17.9.4
 * @design 同名方法存在但不在 overload 列表中 — 编译错误
 * @note 反向用例：类中有同名方法但 overload 列表不包含它
 */
class ConflictTest {
  action(a: int): string { return "int:" + a }
  actionStr(a: string): string { return "str:" + a }
  // overload 名 "action" 与方法名相同但 action 不在列表中
  overload action { actionStr }
}
