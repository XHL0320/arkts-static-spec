/**
 * @id NAM_04_05_001_PASS_RECURSIVE_ARRAY_ELEMENT
 * @expect compile-pass
 * @section 4.5
 * @design 递归别名-数组元素类型
 * @note 正向用例：验证作为数组元素类型的递归引用
 */
type A = A[];
