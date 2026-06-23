/**
 * @id EXP2_17_16_011_FAIL_TYPE_PREDICATE
 * @expect compile-fail
 * @section 17.16
 * @design 类型谓词函数签名中的 is——ArkTS 不支持类型谓词
 * @note 反向用例：验证类型谓词 is 触发编译错误 ESY169587。
 *       ArkTS 不支持 TypeScript 的 "x is Type" 返回类型谓词。
 */
function testTypePredicate(): void {
  console.log("type predicate test")
}

function isString(val: Object): val is string {
  return true
}
