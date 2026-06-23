/**
 * @id STM_08_06_030_RUNTIME_LABEL_NOT_USED
 * @expect runtime
 * @section 8.6
 * @design label 未使用 — es2panda 编译通过（STM-G1 已知差异）

 * @note 运行时用例：实际执行验证未使用label
 */
function main(): void {
  unused_label: for (let i: int = 0; i < 3; i++) { console.log("iter") }
  console.log("verified")
}
