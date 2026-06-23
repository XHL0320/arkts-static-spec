/**
 * @id EXP2_17_09_02_004_PASS_PUBLIC_ACCESS
 * @expect compile-pass
 * @section 17.9.2
 * @design public overload → 所有方法必须 public
 * @note 正向用例：所有方法都是 public
 */
class AccessDemo {
  public methodA(a: int): int { return a }
  public methodB(a: string): int { return a.length }
  public methodC(a: double): int { return new Double(a).toInt() }
  public overload transform { methodA, methodB, methodC }
}
