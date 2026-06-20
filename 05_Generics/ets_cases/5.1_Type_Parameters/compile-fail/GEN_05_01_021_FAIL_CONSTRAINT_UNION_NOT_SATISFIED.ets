/**
 * @id GEN_05_01_021_FAIL_CONSTRAINT_UNION_NOT_SATISFIED
 * @expect compile-fail
 * @section 5.1
 * @design 联合约束不满足
 * @note 反向用例：验证类型参数不满足联合约束
 */
class Base {}
class SomeType {}
class H<T extends Base | SomeType> {}
let h4: H<Object> = new H<Object>();
