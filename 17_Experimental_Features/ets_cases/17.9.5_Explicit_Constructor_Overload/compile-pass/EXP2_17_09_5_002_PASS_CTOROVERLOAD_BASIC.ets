/**
 * @id EXP2_17_09_5_002_PASS_CTOROVERLOAD_BASIC
 * @expect compile-pass
 * @section 17.9.5
 * @design 构造函数 overload 基本声明（命名构造函数在列表中，匿名构造函数隐式优先）
 * @note 正向用例：基本 constructor overload
 */
class NumericValue {
  private val: int
  constructor fromInt(v: int) { this.val = v }
  constructor fromDbl(v: double) { this.val = new Double(v).toInt() }
  overload constructor { fromInt, fromDbl }
}
