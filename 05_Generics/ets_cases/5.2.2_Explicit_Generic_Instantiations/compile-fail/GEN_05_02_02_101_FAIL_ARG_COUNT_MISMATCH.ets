/**
 * @id GEN_05_02_02_101_FAIL_ARG_COUNT_MISMATCH
 * @expect compile-fail
 * @section 5.3
 * @design 类型参数数量不匹配
 * @note 反向用例：验证类型参数数量不等于类型参数数量编译错误
 */
class G<T> {}
let x: G<number, string>;
