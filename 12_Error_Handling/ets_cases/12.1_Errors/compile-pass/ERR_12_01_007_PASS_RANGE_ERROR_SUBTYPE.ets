/**
 * @id ERR_12_01_007_PASS_RANGE_ERROR_SUBTYPE
 * @expect compile-pass
 * @section 12.1
 * @design 标准库 RangeError 是 Error 子类，可作为 Error 处理
 * @note 正向用例：验证 RangeError 可赋值给 Error 并可被 throw
 */
function throwRangeError(): void {
  let err: Error = new RangeError()
  throw err
}
