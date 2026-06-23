/**
 * @id CLS_09_06_2_001_PASS_READONLY_FIELD
 * @expect compile-pass
 * @section 9.6.2
 * @design readonly字段声明编译通过
 * @note 正向用例：spec规定readonly修饰字段合法
 */
class ReadonlyCls {
  readonly MAX: int = 100
  readonly NAME: string = "fixed"
}
