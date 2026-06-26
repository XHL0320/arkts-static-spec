/**
 * @id AMB_14_07_01_004_FAIL_IMPLEMENT_VARIABLE
 * @expect compile-fail
 * @section 14.7.1
 * @design 实现 ambient namespace 中的变量；spec 允许但编译器拒绝
 * @note ⚠️ SPEC 不一致：spec 允许实现变量，但编译器报错
 *       分类：D 类（Spec 与实现不一致）
 */
declare namespace A {
  let x: int
}
namespace A {
  let x: int = 0
}
