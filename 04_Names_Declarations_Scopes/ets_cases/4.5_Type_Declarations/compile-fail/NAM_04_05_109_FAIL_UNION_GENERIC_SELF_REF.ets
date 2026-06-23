/**
 * @id NAM_04_05_109_FAIL_UNION_GENERIC_SELF_REF
 * @expect compile-fail
 * @section 4.5.1
 * @design 泛型类型别名的联合类型自身引用
 * @note 反向用例：type G<T> = T | G<T> 应报编译错误（无终止条件）
 *       规范 4.5.1 — 循环类型引用导致编译时错误
 */
type G<T> = T | G<T>;
