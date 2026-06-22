/**
 * @id CLS_09_05_2_003_FAIL_PROTECTED_ACCESS_OUTSIDE
 * @expect compile-fail
 * @section 9.5.2
 * @design 外部函数访问protected成员导致编译错误
 * @note 反向用例：spec规定protected仅声明类和派生类内可访问
 */
class ProtOut {
  protected count: number
}
function accessProt(c: ProtOut): void {
  c.count++
}
