/**
 * @id EXP_07_05_01_014_PASS_FIXED_ARRAY_OBJECT_ELEMENT
 * @expect compile-pass
 * @section 7.5.1
 * @design FixedArray<Object> 混合元素类型
 * @note 正向用例：验证 FixedArray<Object> 可接受 int 和 string 混合元素
 */
let c: FixedArray<Object> = [1, "hello"]
