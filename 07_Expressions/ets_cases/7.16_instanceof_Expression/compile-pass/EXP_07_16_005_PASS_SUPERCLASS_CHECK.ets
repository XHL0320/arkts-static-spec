/**
 * @id EXP_07_16_005_PASS_SUPERCLASS_CHECK
 * @expect compile-pass
 * @section 7.16
 * @design 验证子类实例 instanceof 父类编译通过（运行时为 true）
 * @note 正向用例：superclass instanceof 检查
 */
class A {}
class B extends A {}

let b = new B()
let r: boolean = b instanceof A
