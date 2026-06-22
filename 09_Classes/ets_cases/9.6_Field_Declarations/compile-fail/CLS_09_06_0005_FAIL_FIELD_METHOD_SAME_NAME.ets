/**
 * @id CLS_09_06_0005_FAIL_FIELD_METHOD_SAME_NAME
 * @expect compile-fail
 * @section 9.6
 * @design 同scope中字段与方法同名导致编译错误
 * @note 反向用例：spec规定同scope字段方法同名报错
 */
class SameNameConflict {
  x: int = 0
  x(): void {}
}
