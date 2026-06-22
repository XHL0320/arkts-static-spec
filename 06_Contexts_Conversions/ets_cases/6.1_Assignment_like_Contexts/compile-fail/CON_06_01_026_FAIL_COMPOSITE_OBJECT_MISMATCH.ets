/**
 * @id CON_06_01_026_FAIL_COMPOSITE_OBJECT_MISMATCH
 * @expect compile-fail
 * @section 6.1
 * @design Composite literal context: 对象字面量中字段值类型(string)与字段类型(int)不匹配且无隐式转换
 * @note 反向用例：验证该场景应产生编译时错误
 */
interface Settings {
  timeout: int
}

function testCompositeObjectMismatchFail(): void {
  let badSettings: Settings = {
    timeout: "not an int"
  }
}
