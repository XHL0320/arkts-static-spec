/**
 * @id NAM_04_05_008_PASS_TYPE_PARAM_DEPEND
 * @expect compile-pass
 * @section 4.5.1
 * @design 类型参数依赖
 * @note 正向用例：验证类型参数依赖其他参数
 */
type X<T, S extends T> = T | S;
