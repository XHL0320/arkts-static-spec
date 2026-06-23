/**
 * @id EXP2_17_09_05_007_PASS_INHERITANCE
 * @expect compile-pass
 * @section 17.9.5
 * @design 子类继承父类，子类自身有 overload constructor
 * @note 正向用例：继承不影响子类的 constructor overload
 */
class Vehicle2 {
  protected kind: string
  constructor(k: string) { this.kind = k }
}

class Car2 extends Vehicle2 {
  private model: string
  constructor simple(m: string) { super("car"); this.model = m }
  constructor detailed(m: string, year: int) { super("car"); this.model = m + "(" + year + ")" }
  overload constructor { simple, detailed }
}
