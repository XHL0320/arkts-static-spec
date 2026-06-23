/**
 * @id EXP2_17_13_1_008_FAIL_ACCESS_PRIVATE_MEMBER
 * @expect compile-fail
 * @section 17.13.1
 * @design 接收者函数只能访问公有成员，访问私有成员应编译失败
 * @note 反向用例：验证该场景应产生编译时错误 ESE0293
 */
class SecretHolder { private secret: string = "classified"; public label: string = "public" }
function revealSecret(this: SecretHolder): string { return this.secret }
function testAccessPrivate(): void {
  let sh: SecretHolder = new SecretHolder()
  let result: string = sh.revealSecret()
}
