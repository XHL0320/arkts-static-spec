/**
 * @id AMB_14_07_01_003_PASS_IMPLEMENT_FUNCTION
 * @expect compile-pass
 * @section 14.7.1
 * @design 实现 ambient namespace 中的函数，提供实现体
 * @note 正向用例：spec 允许实现函数
 *       ⚠️ SPEC 不一致：当前编译器报 "Unable to merge namespace" + "Function foo is already declared"，待修复
 *       分类：D 类（Spec 与实现不一致）
 */
declare namespace A {
  function foo(): void
}
namespace A {
  function foo(): void {}
}
