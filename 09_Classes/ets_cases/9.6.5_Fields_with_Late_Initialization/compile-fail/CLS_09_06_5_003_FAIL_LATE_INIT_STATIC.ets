/**
 * @id CLS_09_06_5_003_FAIL_LATE_INIT_STATIC
 * @expect compile-fail
 * @section 9.6.5
 * @design static late init字段导致编译错误
 * @note 反向用例：spec规定late init必须为instance字段
 */
class LateInitStatic {
  static val!: string
}
