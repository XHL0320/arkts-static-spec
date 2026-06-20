/**
 * @id GEN_05_01_010_PASS_DEPENDENT_PARAM
 * @expect compile-pass
 * @section 5.1
 * @design 依赖前一个类型参数
 * @note 正向用例：验证类型参数依赖前一个参数
 */
class Base {}
class Derived extends Base {}
class G<T, S extends T> {}
let x: G<Base, Derived>;
