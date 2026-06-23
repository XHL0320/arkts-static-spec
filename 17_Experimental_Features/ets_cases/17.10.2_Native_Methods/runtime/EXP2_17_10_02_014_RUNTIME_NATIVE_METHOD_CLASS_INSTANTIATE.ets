/**
 * @id EXP2_17_10_02_014_RUNTIME_NATIVE_METHOD_CLASS_INSTANTIATE
 * @expect runtime
 * @section 17.10.2
 * @design 包含原生方法的类实例化与普通方法调用：验证含有 native method 的类可以被实例化，其普通方法可以正常调用
 * @note 运行时用例：验证 native method 声明不影响类的实例化和其他方法的执行
 */
class ServiceWithNative {
  native platformCall(): string
  regularCall(): string {
    return "regular result"
  }
  getStatus(): int {
    return 200
  }
}
function main(): void {
  let svc: ServiceWithNative = new ServiceWithNative()
  let r1: string = svc.regularCall()
  if (r1 != "regular result") {
    throw new Error("assertion failed: expected 'regular result'")
  }
  let r2: int = svc.getStatus()
  if (r2 != 200) {
    throw new Error("assertion failed: expected 200 status")
  }
  console.log("native method class works: " + r1 + " " + r2)
}
