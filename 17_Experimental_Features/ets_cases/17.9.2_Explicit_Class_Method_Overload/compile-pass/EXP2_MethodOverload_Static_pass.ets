/**
 * @id EXP2_17_09_02_002_PASS_STATIC
 * @expect compile-pass
 * @section 17.9.2
 * @design static overload 包含 static 方法
 * @note 正向用例：所有方法都是 static
 */
class MathUtils {
  static addInt(a: int, b: int): int { return a + b }
  static addDbl(a: double, b: double): double { return a + b }
  static addStr(a: string, b: string): string { return a + b }
  static overload add { addInt, addDbl, addStr }
}
