/**
 * @id CLS_09_05_1_004_FAIL_PRIVATE_FIELD_OUTSIDE
 * @expect compile-fail
 * @section 9.5.1
 * @design 类外访问private字段导致编译错误
 * @note 反向用例：外部函数不可访问private字段
 */
class PrivFieldCls {
  private secret: int = 1
}
function accessPrivField(c: PrivFieldCls): void {
  c.secret++
}
