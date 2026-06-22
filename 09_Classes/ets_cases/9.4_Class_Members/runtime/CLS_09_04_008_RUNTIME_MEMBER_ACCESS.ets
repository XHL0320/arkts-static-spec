/**
 * @id CLS_09_04_008_RUNTIME_MEMBER_ACCESS
 * @expect runtime
 * @section 9.4
 * @design 类成员访问运行时验证
 * @note 运行时用例：验证字段和方法读写执行正�?
 */
class MemberTest {
  val: int = 0
  getVal(): int { return this.val }
  setVal(v: int): void { this.val = v }
}

function main(): void {
  let m = new MemberTest()
  m.setVal(42)
  if (m.getVal() != 42) {
    throw new Error("getVal() should be 42")
  }
  console.log("Member access verified")
}
