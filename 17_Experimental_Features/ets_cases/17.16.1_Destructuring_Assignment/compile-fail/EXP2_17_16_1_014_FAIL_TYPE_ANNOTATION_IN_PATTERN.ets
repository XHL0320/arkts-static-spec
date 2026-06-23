/**
 * @id EXP2_17_16_1_014_FAIL_TYPE_ANNOTATION_IN_PATTERN
 * @expect compile-fail
 * @section 17.16.1
 * @design 解构模式内的类型注释——let [a: int, b: int] = arr 触发 ESY0229
 * @note 反向用例：验证解构模式内不支持类型注释，产生语法错误
 */
function testTypeAnnotationInPattern(): void {
  let arr: int[] = [1, 2]
  let [a: int, b: int] = arr
  console.log(a)
}
