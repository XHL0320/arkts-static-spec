/**
 * @id CLS_09_02_004_PASS_EXTENDS_ACCESSIBLE_CLASS
 * @expect compile-pass
 * @section 9.2
 * @design extends指向同文件中可访问的类，编译通过
 * @note 正向用例：验证extends只能指向可访问的类类型
 */
class AccessibleParent {
  public name: string = ""
  public greet(): string {
    return "hello"
  }
}
class AccessibleChild extends AccessibleParent {
  public greet(): string {
    return "hello from child"
  }
}
