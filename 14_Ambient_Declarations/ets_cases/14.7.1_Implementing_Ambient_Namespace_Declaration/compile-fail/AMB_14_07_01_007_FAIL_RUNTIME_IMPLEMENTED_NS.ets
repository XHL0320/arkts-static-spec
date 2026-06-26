/**
 * @id AMB_14_07_01_007_FAIL_RUNTIME_IMPLEMENTED_NS
 * @expect compile-fail
 * @section 14.7.1
 * @design 实现 ambient namespace 与 main 共存；spec 允许但编译器拒绝
 * @note ⚠️ SPEC 不一致：spec 允许，但编译器报 "Unable to merge namespaces"
 *       分类：D 类（Spec 与实现不一致）
 */
declare namespace A {
  function foo(): void
}
namespace A {
  function foo(): void {}
}

function main(): void {
  let x: int = 1
  if (x != 1) {
    throw new Error("assertion failed")
  }
  console.log("verified")
}
