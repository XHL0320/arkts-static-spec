/**
 * @id CLS_09_05_2_001_PASS_PROTECTED_ACCESS_IN_CLASS
 * @expect compile-pass
 * @section 9.5.2
 * @design 类内访问protected成员编译通过
 * @note 正向用例：spec规定protected在声明类内可访问
 */
class ProtInClass {
  protected count: number
  getCount(): number { return this.count }
}
