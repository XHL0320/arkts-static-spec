/**
 * @id AMB_14_07_01_004_PASS_IMPLEMENT_VARIABLE
 * @expect compile-pass
 * @section 14.7.1
 * @design 实现 ambient namespace 中的变量，提供初始值
 * @note 正向用例：spec 允许实现变量
 *       ⚠️ SPEC 不一致：当前编译器报 "Unable to merge namespaces" + "Variable x has already been declared"，待修复
 *       分类：D 类（Spec 与实现不一致）
 */
declare namespace A {
  let x: int
}
namespace A {
  let x: int = 0
}
