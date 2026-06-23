/**
 * @id CLS_09_06_2_005_RUNTIME_READONLY_ACCESS
 * @expect runtime
 * @section 9.6.2
 * @design readonly字段访问运行时验�?
 * @note 运行时用例：验证readonly字段可读不可�?
 */
class ReadonlyRt {
  readonly val: int = 42
  getVal(): int { return this.val }
}
function main(): void {
  let r = new ReadonlyRt()
  if (r.getVal() != 42) { throw new Error("getVal() should be 42") }
  if (r.val != 42) { throw new Error("r.val should be 42") }
  console.log("Readonly access verified")
}
