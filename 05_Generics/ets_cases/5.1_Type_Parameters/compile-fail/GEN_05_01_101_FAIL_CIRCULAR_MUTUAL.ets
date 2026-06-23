/**
 * @id GEN_05_01_101_FAIL_CIRCULAR_MUTUAL
 * @expect compile-fail
 * @section 5.1
 * @design 类型参数循环依赖
 * @note 反向用例：验证类型参数相互循环依赖
 */
class D<T extends R, R extends T> {}
