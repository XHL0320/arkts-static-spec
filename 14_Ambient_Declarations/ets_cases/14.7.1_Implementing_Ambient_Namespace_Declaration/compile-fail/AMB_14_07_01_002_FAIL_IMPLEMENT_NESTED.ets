/**
 * @id AMB_14_07_01_002_FAIL_IMPLEMENT_NESTED
 * @expect compile-fail
 * @section 14.7.1
 * @design 实现嵌套 ambient namespace；spec 允许但编译器拒绝
 * @note ⚠️ SPEC 不一致：spec 允许嵌套同名实现，但编译器报错
 *       分类：D 类（Spec 与实现不一致）
 */
declare namespace A {
  namespace B {}
}
namespace A {
  namespace B {}
}
