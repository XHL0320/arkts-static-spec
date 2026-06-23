/**
 * @id EXP2_17_01_01_008_FAIL_OUT_OF_RANGE_UNICODE
 * @expect compile-fail
 * @section 17.1.1
 * @design 超出 16 位范围的 Unicode 字面量应产生编译时错误：c'\u{FFFFF}' 超过 U+FFFF
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testOutOfRangeUnicodeFail(): void {
  let outOfRange: char = c'\u{FFFFF}'
  console.log(outOfRange)
}
