/**
 * @id CON_06_01_025_FAIL_COMPOSITE_ARRAY_MISMATCH
 * @expect compile-fail
 * @section 6.1
 * @design Composite literal context: 数组字面量中元素类型(string)与数组元素类型(int)不匹配且无隐式转换
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testCompositeArrayMismatchFail(): void {
  let invalidArr: int[] = [1, "two", 3]
}
