/**
 * @id GEN_05_01_01_100_FAIL_CONSTRAINT_NOT_SATISFIED
 * @expect compile-fail
 * @section 5.1
 * @design 类型参数不满足约束
 * @note 反向用例：验证类型参数不满足 extends 约束编译错误
 */
class Base {}
class SomeType {}
class G<T extends Base> {}
let z: G<SomeType> = new G<SomeType>();
