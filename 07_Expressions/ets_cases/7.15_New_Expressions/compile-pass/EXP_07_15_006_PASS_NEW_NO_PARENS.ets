/**
 * @id EXP_07_15_006_PASS_NEW_NO_PARENS
 * @expect compile-pass
 * @section 7.15
 * @design 验证无参无括号 new A
 * @note 正向用例：无构造器参数的 new 表达式可省略括号
 */
class A {
  v: int = 10
}
let a = new A
