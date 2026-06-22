/**
 * @id CLS_09_05_2_005_RUNTIME_PROTECTED_IN_SUBCLASS
 * @expect runtime
 * @section 9.5.2
 * @design 子类访问protected成员运行时验�?
 * @note 运行时用例：验证protected成员在子类中正确执行
 */
class ProtRtBase {
  protected val: int = 10
  protected getVal(): int { return this.val }
}
class ProtRtSub extends ProtRtBase {
  useProtected(): int { return this.getVal() }
}

function main(): void {
  let s = new ProtRtSub()
  if (s.useProtected() != 10) {
    throw new Error("useProtected() should be 10")
  }
  console.log("Protected in subclass verified")
}
