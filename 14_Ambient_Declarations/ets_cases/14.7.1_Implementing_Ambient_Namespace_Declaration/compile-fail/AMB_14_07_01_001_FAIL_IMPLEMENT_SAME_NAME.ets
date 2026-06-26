/**
 * @id AMB_14_07_01_001_FAIL_IMPLEMENT_SAME_NAME
 * @expect compile-fail
 * @section 14.7.1
 * @design 实现 ambient namespace：同名非 declare namespace；spec 允许但编译器拒绝
 * @note ⚠️ SPEC 不一致：spec 允许同名实现，但编译器报 "Unable to merge namespaces"
 *       分类：D 类（Spec 与实现不一致）
 */
declare namespace A {}
namespace A {}
