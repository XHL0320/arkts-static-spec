/**
 * @id EXP2_17_02_01_011_FAIL_UNION_TYPE_ERASURE
 * @expect compile-fail
 * @section 17.2.1
 * @design FixedArray 联合类型含类型参数不被类型擦除保留：FixedArray<T | number> 中 T 为类型参数时应产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误。T | number 含类型参数，不被类型擦除保留
 */
function makeFixedArray<T>(val: T): FixedArray<T | number> {
  return [val]
}
