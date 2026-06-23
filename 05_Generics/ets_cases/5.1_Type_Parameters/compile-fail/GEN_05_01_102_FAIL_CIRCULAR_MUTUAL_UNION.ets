/**
 * @id GEN_05_01_102_FAIL_CIRCULAR_MUTUAL_UNION
 * @expect compile-fail
 * @section 5.1
 * @design 类型参数联合循环依赖
 * @note 反向用例：验证类型参数联合类型循环依赖
 */
class E<T extends R, R extends T | undefined> {}
