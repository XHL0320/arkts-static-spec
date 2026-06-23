/**
 * @id EXP_07_05_01_018_PASS_READONLY_ARRAY_CONTEXT
 * @expect compile-pass
 * @section 7.5.1
 * @design readonly 数组上下文：let c: readonly string[] = ["aa", "bb"]
 * @note 正向用例：验证 readonly 数组类型作为上下文编译通过
 */
let c: readonly string[] = ["aa", "bb"]
