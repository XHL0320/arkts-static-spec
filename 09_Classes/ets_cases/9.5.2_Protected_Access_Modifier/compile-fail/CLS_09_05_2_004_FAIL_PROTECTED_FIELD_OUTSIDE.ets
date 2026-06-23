/**
 * @id CLS_09_05_2_004_FAIL_PROTECTED_FIELD_OUTSIDE
 * @expect compile-fail
 * @section 9.5.2
 * @design 外部访问protected字段导致编译错误
 * @note 反向用例：protected字段外部不可访问
 */
class ProtField {
  protected data: string = "protected"
}
function readProtField(p: ProtField): string {
  return p.data
}
