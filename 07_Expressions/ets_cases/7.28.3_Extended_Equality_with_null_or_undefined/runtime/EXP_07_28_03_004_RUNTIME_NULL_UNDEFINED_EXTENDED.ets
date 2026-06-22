/**
 * @id EXP_07_28_03_004_RUNTIME_NULL_UNDEFINED_EXTENDED
 * @expect runtime
 * @section 7.28.3
 * @design 扩展 null/undefined 相等运行时验证

 * @note 运行时用例：实际执行验证扩展相等
 */
function foo(x: Object | null, y: Object | null | undefined): void {
  console.log((x == y).toString(), (x === y).toString())
}
function main(): void {
  foo(null, undefined)
  foo(null, null)
  console.log("verified")
}
