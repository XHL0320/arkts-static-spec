/**
 * @id CLS_09_06_3_001_PASS_OPTIONAL_FIELD_NO_INIT
 * @expect compile-pass
 * @section 9.6.3
 * @design optional字段无初始化器编译通过
 * @note 正向用例：spec规定optional字段默认undefined
 */
class OptNoInit {
  val?: number
}
