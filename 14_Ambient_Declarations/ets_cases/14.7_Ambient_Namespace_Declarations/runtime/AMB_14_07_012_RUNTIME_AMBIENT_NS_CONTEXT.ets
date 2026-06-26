/**
 * @id AMB_14_07_012_RUNTIME_AMBIENT_NS_CONTEXT
 * @expect runtime
 * @section 14.7
 * @design ambient namespace 与 main 共存，验证不影响编译执行
 * @note 运行时用例
 */
declare namespace A {
  function foo(): void
}

function main(): void {
  let x: int = 1
  if (x != 1) {
    throw new Error("assertion failed")
  }
  console.log("verified")
}
