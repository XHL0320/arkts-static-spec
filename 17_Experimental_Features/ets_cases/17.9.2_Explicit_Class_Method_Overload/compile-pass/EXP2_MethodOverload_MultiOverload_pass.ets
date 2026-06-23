/**
 * @id EXP2_17_09_02_008_PASS_MULTI_OVERLOAD_CLASS
 * @expect compile-pass
 * @section 17.9.2
 * @design 同一个类中可以有多个 overload 声明
 * @note 正向用例：多个 overload 集存在于同一个类中
 */
class MultiOverload {
  m1(a: int): int { return a }
  m2(a: string): int { return a.length }
  m3(a: double): int { return new Double(a).toInt() }
  m4(a: boolean): int { return a ? 1 : 0 }

  overload getInt { m1, m2 }
  overload getInt2 { m3, m4 }
}
