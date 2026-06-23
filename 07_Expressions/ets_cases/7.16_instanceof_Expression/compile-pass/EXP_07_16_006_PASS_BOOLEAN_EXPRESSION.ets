/**
 * @id EXP_07_16_006_PASS_BOOLEAN_EXPRESSION
 * @expect compile-pass
 * @section 7.16
 * @design 验证 instanceof 结果可用于复杂布尔表达式（&&、||、!）
 * @note 正向用例：instanceof 结果类型为 boolean，可用于布尔运算
 */
class A {}
class B extends A {}

let a: A = new B()
let r1: boolean = (a instanceof B) && true
let r2: boolean = (a instanceof B) || false
let r3: boolean = !(a instanceof A)
