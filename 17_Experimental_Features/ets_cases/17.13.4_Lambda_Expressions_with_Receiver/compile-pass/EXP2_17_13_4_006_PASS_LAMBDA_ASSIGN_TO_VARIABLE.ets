/**
 * @id EXP2_17_13_4_006_PASS_LAMBDA_ASSIGN_TO_VARIABLE
 * @expect compile-pass
 * @section 17.13.4
 * @design 带接收者的lambda赋值给变量，通过普通调用使用
 * @note 正向用例：验证该特性编译通过的正确用法
 */
interface Identifiable { id: number }
class Entity implements Identifiable { id: number = 0 }
function testLambdaAssignToVariable(): void {
  let idReader = (this: Identifiable): number => { return this.id }
  let e: Entity = new Entity(); e.id = 999
  let rid: number = idReader(e)
  console.log("compiled successfully")
}
