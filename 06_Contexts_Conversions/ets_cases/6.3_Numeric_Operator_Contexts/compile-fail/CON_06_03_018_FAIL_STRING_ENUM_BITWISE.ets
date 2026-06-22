/**
 * @id CON_06_03_018_FAIL_STRING_ENUM_BITWISE
 * @expect compile-fail
 * @section 6.3
 * @design string 基类型枚举参与位运算: string enum | int, 应编译失败
 * @note 反向用例：string 枚举用于位运算应编译失败
 */
enum StatusCode {
  OK = "ok",
  Error = "error"
}

function testStringEnumBitwiseFail(): void {
  let r: int = StatusCode.OK | 1
}
