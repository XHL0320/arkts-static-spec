/**
 * @id GEN_05_02_02_100_FAIL_NON_GENERIC_WITH_ARGS
 * @expect compile-fail
 * @section 5.3
 * @design 非泛型实体提供类型参数
 * @note 反向用例：验证非泛型类型不能有类型参数
 */
class NonGeneric {}
let x: NonGeneric<number>;
