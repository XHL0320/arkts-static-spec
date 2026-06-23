/**
 * @id CLS_09_06_1_003_PASS_STATIC_FIELD_ACCESS_BY_CLASSNAME
 * @expect compile-pass
 * @section 9.6.1
 * @design 通过类名访问static字段编译通过
 * @note 正向用例：spec规定static字段通过类名访问
 */
class StaticAccess {
  static val: int = 42
}
function useStaticVal(): int {
  return StaticAccess.val
}
