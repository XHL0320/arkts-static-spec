/**
 * @id AMB_14_07_01_002_PASS_IMPLEMENT_NESTED
 * @expect compile-pass
 * @section 14.7.1
 * @design 实现嵌套 ambient namespace，各级 namespace 同名
 * @note 正向用例：spec 允许嵌套同名实现
 *       ⚠️ SPEC 不一致：当前编译器报 "Unable to merge namespaces"（modifier 不同），待修复
 *       分类：D 类（Spec 与实现不一致）
 */
declare namespace A {
  namespace B {}
}
namespace A {
  namespace B {}
}
