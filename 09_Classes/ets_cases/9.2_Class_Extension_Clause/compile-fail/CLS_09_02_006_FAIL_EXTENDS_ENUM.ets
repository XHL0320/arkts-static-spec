/**
 * @id CLS_09_02_006_FAIL_EXTENDS_ENUM
 * @expect compile-fail
 * @section 9.2
 * @design extends子句指向枚举类型应编译失败
 * @note 反向用例：spec §9.2规定extends只能指向类类型，不能指向枚举
 */
enum ColorKind {
  Red,
  Green,
  Blue
}
class BadEnumClass extends ColorKind {
}
