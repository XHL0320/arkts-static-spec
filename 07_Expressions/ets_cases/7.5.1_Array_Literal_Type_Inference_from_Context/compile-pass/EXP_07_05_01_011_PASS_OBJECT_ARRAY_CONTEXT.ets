/**
 * @id EXP_07_05_01_011_PASS_OBJECT_ARRAY_CONTEXT
 * @expect compile-pass
 * @section 7.5.1
 * @design Object[] 类型上下文：混合元素类型 int 和 string
 * @note 正向用例：验证 Object[] 可接受混合类型元素编译通过
 */
let o: Object[] = ["aa", 2]
