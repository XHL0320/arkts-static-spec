/**
 * @id EXP2_17_13_5_008_FAIL_IMPLICIT_PRIVATE_MEMBER
 * @expect compile-fail
 * @section 17.13.5
 * @design 通过 this 访问私有成员应编译失败 — ESE0293
 * @note 反向用例：验证该场景应产生编译时错误
 */
class Secret { private code: string = "topsecret" }
function testImplicitPrivate(): void {
  let reveal = (this: Secret): string => { return this.code }
  let s: Secret = new Secret()
  let r: string = reveal(s)
}
