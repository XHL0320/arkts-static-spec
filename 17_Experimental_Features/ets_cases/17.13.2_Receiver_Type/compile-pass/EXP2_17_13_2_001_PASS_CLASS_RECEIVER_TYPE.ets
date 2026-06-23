/**
 * @id EXP2_17_13_2_001_PASS_CLASS_RECEIVER_TYPE
 * @expect compile-pass
 * @section 17.13.2
 * @design 类类型作为接收者类型：合法接收者类型
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class Entity { health: number = 100 }
function damage(this: Entity, amount: number): number { this.health = this.health - amount; return this.health }
function testClassReceiverType(): void {
  let e: Entity = new Entity()
  let remaining: number = e.damage(20)
  console.log("compiled successfully")
}
