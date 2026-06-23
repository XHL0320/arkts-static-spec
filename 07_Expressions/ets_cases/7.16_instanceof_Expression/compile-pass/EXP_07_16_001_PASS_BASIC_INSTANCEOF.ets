/**
 * @id EXP_07_16_001_PASS_BASIC_INSTANCEOF
 * @expect compile-pass
 * @section 7.16
 * @design 验证基本 instanceof 表达式：子类实例 instanceof 父类/子类返回正确 boolean
 * @note 正向用例：基本类层次结构 instanceof 检查
 */
class A {}
class B extends A {}

let a: A = new B()
let r1: boolean = a instanceof B
let r2: boolean = a instanceof A
let r3: boolean = (new A()) instanceof B
