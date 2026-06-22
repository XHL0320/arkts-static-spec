/**
 * @id CLS_09_05_004_RUNTIME_PUBLIC_ACCESS
 * @expect runtime
 * @section 9.5
 * @design public成员访问运行时验�?
 * @note 运行时用例：验证public成员可被外部访问
 */
class PubCls {
  public data: int = 10
  public getData(): int { return this.data }
}

function main(): void {
  let p = new PubCls()
  if (p.data != 10) {
    throw new Error("p.data should be 10")
  }
  if (p.getData() != 10) {
    throw new Error("p.getData() should be 10")
  }
  console.log("Public access verified")
}
