/**
 * @id AMB_14_07_01_001_PASS_IMPLEMENT_SAME_NAME
 * @expect compile-pass
 * @section 14.7.1
 * @design 实现 ambient namespace：同名非 declare namespace
 * @note 正向用例：spec 允许同名实现
 *       ⚠️ SPEC 不一致：当前编译器报 "Unable to merge namespaces"（modifier 不同），待修复
 *       分类：D 类（Spec 与实现不一致）
 */
declare namespace A {}
namespace A {}
