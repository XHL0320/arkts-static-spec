/**
 * @id EXP_07_15_012_FAIL_NEW_ABSTRACT
 * @expect compile-fail
 * @section 7.15
 * @design 验证抽象类不可用 new 实例化
 * @note 反向用例：抽象类不能直接 new 实例化
 */
abstract class A { abstract foo(): void }
let a = new A()
