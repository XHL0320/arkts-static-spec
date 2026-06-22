/**
 * @id CLS_09_02_008_FAIL_EXTENDS_INACCESSIBLE
 * @expect compile-fail
 * @section 9.2
 * @design extends指向不可访问（private构造器）的类应编译失败
 * @note 反向用例：spec规定extends只能指向可访问的类类型
 */
class PrivateParent {
  private constructor() {}
}
class BadAccessChild extends PrivateParent {
}
