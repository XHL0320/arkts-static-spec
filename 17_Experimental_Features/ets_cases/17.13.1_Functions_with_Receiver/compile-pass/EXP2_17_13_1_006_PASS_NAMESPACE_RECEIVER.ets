/**
 * @id EXP2_17_13_1_006_PASS_NAMESPACE_RECEIVER
 * @expect compile-pass
 * @section 17.13.1
 * @design 命名空间中的接收者函数：在命名空间中定义接收者函数，通过普通调用语法使用
 * @note 正向用例：验证该特性编译通过的正确用法。注意：es2panda 仅支持对命名空间中接收者函数使用普通调用语法
 */
namespace Utils {
  export class Tool { label: string = "" }
  export function getLabel(this: Tool): string { return this.label }
  export function setLabel(this: Tool, l: string): void { this.label = l }
}
function testNamespaceReceiver(): void {
  let tool: Utils.Tool = new Utils.Tool()
  Utils.setLabel(tool, "test_label")
  let lbl: string = Utils.getLabel(tool)
  console.log("compiled successfully")
}
