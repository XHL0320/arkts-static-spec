/**
 * @id CLS_09_05_2_002_PASS_PROTECTED_ACCESS_IN_SUBCLASS
 * @expect compile-pass
 * @section 9.5.2
 * @design 子类访问protected成员编译通过
 * @note 正向用例：spec规定protected在派生类内可访问
 */
class ProtBase {
  protected count: number
}
class ProtSub extends ProtBase {
  increment(): void { this.count++ }
}
