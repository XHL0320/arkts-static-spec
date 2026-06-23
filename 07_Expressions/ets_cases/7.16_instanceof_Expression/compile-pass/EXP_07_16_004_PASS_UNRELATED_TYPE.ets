/**
 * @id EXP_07_16_004_PASS_UNRELATED_TYPE
 * @expect compile-pass
 * @section 7.16
 * @design 验证无继承关系类型 instanceof 编译通过（运行时为 false）
 * @note 正向用例：不相关类型 instanceof 语法检查
 */
class A {}
class B {}

let a = new A()
let r: boolean = a instanceof B
