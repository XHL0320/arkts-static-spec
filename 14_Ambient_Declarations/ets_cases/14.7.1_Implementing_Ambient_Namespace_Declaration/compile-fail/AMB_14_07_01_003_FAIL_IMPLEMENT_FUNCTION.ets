/**
 * @id AMB_14_07_01_003_FAIL_IMPLEMENT_FUNCTION
 * @expect compile-fail
 * @section 14.7.1
 * @design 实现 ambient namespace 中的函数；spec 允许但编译器拒绝
 * @note ⚠️ SPEC 不一致：spec 允许实现函数，但编译器报错
 *       分类：D 类（Spec 与实现不一致）
 */
declare namespace A {
  function foo(): void
}
namespace A {
  function foo(): void {}
}
