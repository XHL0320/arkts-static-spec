/**
 * @id NAM_04_05_01_007_PASS_RECURSIVE_NESTED
 * @expect compile-pass
 * @section 4.5.1
 * @design 嵌套递归类型别名（树形结构）
 * @note 正向用例：验证 type NodeValue<T> = T | Array<T> | Array<NodeValue<T>> 编译通过（spec 4.5.1 行546）
 */
type NodeValue<T> = T | Array<T> | Array<NodeValue<T>>
