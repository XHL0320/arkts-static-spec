/**
 * @id AMB_14_07_01_005_FAIL_NESTED_NAME_MISMATCH
 * @expect compile-fail
 * @section 14.7.1
 * @design 嵌套 namespace 名称不匹配（ambient = B，实现 = C），违反 spec
 * @note 反向用例：嵌套名称不一致应产生编译时错误
 */
declare namespace A {
  namespace B {}
}
namespace A {
  namespace C {}
}
