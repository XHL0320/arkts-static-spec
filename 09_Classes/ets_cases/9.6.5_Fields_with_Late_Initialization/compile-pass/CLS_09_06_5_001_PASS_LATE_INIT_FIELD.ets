/**
 * @id CLS_09_06_5_001_PASS_LATE_INIT_FIELD
 * @expect compile-pass
 * @section 9.6.5
 * @design late initialization字段声明编译通过
 * @note 正向用例：spec规定f!:T为late init字段
 */
class LateInitCls {
  name!: string
}
