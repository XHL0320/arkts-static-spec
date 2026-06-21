/**
 * @id NAM_04_05_027_FAIL_PARAM_CIRCULAR_UNION_DEPEND
 * @expect compile-fail
 * @section 4.5.1
 * @design 类型参数循环依赖（联合类型变体）
 * @note 反向用例：验证 type Z<T extends R, R extends T | undefined> = T 类型参数循环依赖编译报错（spec 4.5.1 行562）
 */
type Z<T extends R, R extends T | undefined> = T
