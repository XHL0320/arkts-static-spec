/**
 * @id EXP2_17_13_004_PASS_ORDINARY_CALL_SYNTAX
 * @expect compile-pass
 * @section 17.13
 * @design 接收者函数的普通函数调用语法：接收者作为第一个参数传递，效果等同方法调用语法
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class Container {
  content: string = ""
}

function getContent(this: Container): string {
  return this.content
}

function setContent(this: Container, v: string): void {
  this.content = v
}

function testOrdinaryCallSyntax(): void {
  let b: Container = new Container()
  setContent(b, "hello")
  let result: string = getContent(b)
  let result2: string = b.getContent()
  console.log("compiled successfully")
}
