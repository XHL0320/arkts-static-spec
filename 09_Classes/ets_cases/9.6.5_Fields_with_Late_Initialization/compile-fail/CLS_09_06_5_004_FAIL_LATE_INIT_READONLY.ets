/**
 * @id CLS_09_06_5_004_FAIL_LATE_INIT_READONLY
 * @expect compile-fail
 * @section 9.6.5
 * @design readonly late init字段导致编译错误
 * @note 反向用例：spec规定late init不得readonly
 */
class LateInitRO {
  readonly val!: string
}
