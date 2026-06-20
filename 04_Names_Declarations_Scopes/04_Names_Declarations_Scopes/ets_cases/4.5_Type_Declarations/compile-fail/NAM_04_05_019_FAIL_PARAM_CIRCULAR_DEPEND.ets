/**
 * @id NAM_04_05_019_FAIL_PARAM_CIRCULAR_DEPEND
 * @expect compile-fail
 * @section 4.5.1
 * @design 类型参数循环依赖
 * @note 反向用例：验证类型参数相互循环依赖
 */
type Y<T extends R, R extends T> = T;
