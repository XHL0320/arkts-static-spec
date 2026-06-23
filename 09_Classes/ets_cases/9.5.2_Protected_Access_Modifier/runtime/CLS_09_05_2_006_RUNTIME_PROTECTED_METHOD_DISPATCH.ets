/**
 * @id CLS_09_05_2_006_RUNTIME_PROTECTED_METHOD_DISPATCH
 * @expect runtime
 * @section 9.5.2
 * @design protected方法派发运行时验�?
 * @note 运行时用例：验证protected方法在继承链中的调用
 */
class ProtDispatchBase {
  protected greet(): string { return "base" }
  public callGreet(): string { return this.greet() }
}
class ProtDispatchSub extends ProtDispatchBase {
  protected greet(): string { return "sub" }
}

function main(): void {
  let s = new ProtDispatchSub()
  if (s.callGreet() != "sub") {
    throw new Error("callGreet() should be 'sub'")
  }
  console.log("Protected method dispatch verified")
}
