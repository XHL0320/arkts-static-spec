/**
 * @id CLS_09_02_012_RUNTIME_INHERIT_METHOD_CALL
 * @expect runtime
 * @section 9.2
 * @design 继承的方法调用验证
 * @note 运行时用例：验证子类调用继承的超类方法
 */
class MethodBase {
  greet(): string {
    return "hello from base"
  }
}
class MethodChild extends MethodBase {
  farewell(): string {
    return "bye"
  }
}

function main(): void {
  let c = new MethodChild()
  if (c.greet() != "hello from base") {
    throw new Error("inherited greet() should return 'hello from base'")
  }
  if (c.farewell() != "bye") {
    throw new Error("farewell() should return 'bye'")
  }
  console.log("Inherit method call verified")
}
