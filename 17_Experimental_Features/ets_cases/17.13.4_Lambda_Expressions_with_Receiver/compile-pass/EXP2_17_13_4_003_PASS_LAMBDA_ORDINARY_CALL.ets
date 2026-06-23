/**
 * @id EXP2_17_13_4_003_PASS_LAMBDA_ORDINARY_CALL
 * @expect compile-pass
 * @section 17.13.4
 * @design 带接收者的lambda通过普通调用语法调用：lambda(receiver) 形式
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class TextHolder { text: string = "" }
function testLambdaOrdinaryCall(): void {
  let getLength = (this: TextHolder): number => { return this.text.length }
  let th: TextHolder = new TextHolder(); th.text = "hello"
  let len: number = getLength(th)
  console.log("compiled successfully")
}
