/**
 * @id ENM_11_04_011_FAIL_FROMVALUE_WRONG_BASE_TYPE
 * @expect compile-fail
 * @section 11.4
 * @design fromValue 参数类型必须匹配枚举基类型
 * @note 反向用例：验证 int 基枚举 fromValue 不接受 string 参数
 */
enum MethodBaseColor { Red, Green }
function testFromValueWrongBaseType(): void {
  let c: MethodBaseColor = MethodBaseColor.fromValue("Red")
}
