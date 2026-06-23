/**
 * @id GEN_05_02_02_003_FAIL_CONSTRAINT_VIOLATION
 * @expect compile-fail
 * @section 5.3
 * @design 类型参数不满足约束
 * @note 反向用例：验证类型参数不满足约束的实例化
 */
class Base {}
class G<T extends Base> {}
let x: G<number>;
