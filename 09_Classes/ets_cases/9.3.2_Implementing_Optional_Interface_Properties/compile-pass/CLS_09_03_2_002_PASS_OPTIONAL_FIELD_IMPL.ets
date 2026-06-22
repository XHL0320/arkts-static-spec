/**
 * @id CLS_09_03_2_002_PASS_OPTIONAL_FIELD_IMPL
 * @expect compile-pass
 * @section 9.3.2
 * @design optional字段实现可选属性编译通过
 * @note 正向用例：spec规定可选属性可由optional字段实现
 */
interface IOpt2 {
  num?: number
}
class COpt2 implements IOpt2 {
  num?: number = 42
}
