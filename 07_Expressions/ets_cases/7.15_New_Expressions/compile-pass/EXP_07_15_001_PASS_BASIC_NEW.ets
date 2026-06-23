/**
 * @id EXP_07_15_001_PASS_BASIC_NEW
 * @expect compile-pass
 * @section 7.15
 * @design 验证基本 new 表达式，调用默认构造器：new A()
 * @note 正向用例：基本类实例创建，验证 new 表达式语法正确性
 */
class A {}
let a = new A()
