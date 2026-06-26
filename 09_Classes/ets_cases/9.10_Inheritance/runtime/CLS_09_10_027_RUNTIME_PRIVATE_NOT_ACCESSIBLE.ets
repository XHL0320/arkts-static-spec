/**
 * @id CLS_09_10_027_RUNTIME_PRIVATE_NOT_ACCESSIBLE
 * @expect runtime
 * @section 9.10
 * @design 运行时验证 private 成员不被子类继承，但可通过父类公有方法间接访问
 * @note 运行时用例：D27 不能直接访问 secret，但继承的 getSecret() 返回 99
 */
class B27 { private secret: int = 99; getSecret(): int { return this.secret } }
class D27 extends B27 {}
function main(): void { let d: D27 = new D27(); if (d.getSecret() != 99) { throw new Error("fail") } console.log("verified") }
