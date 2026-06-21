/**
 * @id GEN_05_01_011_PASS_TYPE_PARAM_DEFAULT
 * @expect compile-pass
 * @section 5.1
 * @design 类型参数默认值
 * @note 正向用例：验证有默认值的类型参数
 */
class SomeType {}
class Base<T = SomeType> {}
let b: Base = new Base();
