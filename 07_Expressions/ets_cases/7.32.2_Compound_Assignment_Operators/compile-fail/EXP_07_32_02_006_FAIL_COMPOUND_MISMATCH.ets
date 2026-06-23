/**
 * @id EXP_07_32_02_006_FAIL_COMPOUND_MISMATCH
 * @expect compile-fail
 * @section 7.32.2
 * @design 复合赋值类型不兼容应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testCompoundMismatchFail(): void {
  let x: int = 5; let y: string = "10"
  x += y
  console.log(x.toString())
}
