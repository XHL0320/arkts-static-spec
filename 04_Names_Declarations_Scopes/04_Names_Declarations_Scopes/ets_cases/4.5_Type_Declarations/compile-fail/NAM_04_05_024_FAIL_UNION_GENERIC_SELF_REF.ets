/**
 * @id NAM_04_05_024_FAIL_UNION_GENERIC_SELF_REF
 * @expect compile-fail
 * @section 4.5.1
 * @design 泛型类型别名的联合类型自身引用
 * @note 反向用例：spec 4.5.1 行511 type F = string | F 是非法的。
 *       泛型变体 type G<T> = T | G<T> 也应该是非法的（没有终止条件）。
 *       对比：type D = string | Array<D> 是合法的（Array<D> 算"作为类型参数"）。
 *
 * GAP POTENTIAL: 类型 1/5（Parser 解析 union 可能在词法/语法层先展平，
 *       使得循环检测变得复杂）。编译器能否区分 string | Array<D>（合法）
 *       和 T | G<T>（非法）？
 */
type G<T> = T | G<T>;
