/**
 * @id EXP2_17_13_2_002_PASS_INTERFACE_RECEIVER_TYPE
 * @expect compile-pass
 * @section 17.13.2
 * @design 接口类型作为接收者类型：合法接收者类型
 * @note 正向用例：验证该特性编译通过的正确用法
 */
interface Printable { content: string }
class Document implements Printable { content: string = "empty" }
function printContent(this: Printable): string { return "Content: " + this.content }
function testInterfaceReceiverType(): void {
  let doc: Document = new Document(); doc.content = "important text"
  let result: string = doc.printContent()
  console.log("compiled successfully")
}
