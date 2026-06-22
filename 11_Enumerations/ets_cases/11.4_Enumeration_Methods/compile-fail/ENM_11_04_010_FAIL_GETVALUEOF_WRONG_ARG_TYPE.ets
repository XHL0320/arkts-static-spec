/**
 * @id ENM_11_04_010_FAIL_GETVALUEOF_WRONG_ARG_TYPE
 * @expect compile-fail
 * @section 11.4
 * @design getValueOf 参数必须为 string
 * @note 反向用例：验证 getValueOf 非 string 参数编译失败
 */
enum MethodArgColor { Red, Green }
function testGetValueOfWrongArgType(): void {
  let c: MethodArgColor = MethodArgColor.getValueOf(1)
}
