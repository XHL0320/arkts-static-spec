/**
 * @id GEN_05_01_024_FAIL_DEPENDENT_NOT_SATISFIED
 * @expect compile-fail
 * @section 5.1
 * @design 依赖约束不满足
 * @note 反向用例：验证依赖前参数的约束不满足
 */
class Base {}
class SomeType {}
class G<T, S extends T> {}
let y: G<Base, SomeType>;
