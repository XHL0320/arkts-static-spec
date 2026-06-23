/**
 * @id EXP2_17_10_02_016_RUNTIME_OVERRIDE_NATIVE_METHOD
 * @expect runtime
 * @section 17.10.2
 * @design 子类覆盖原生方法后正常调用：验证 override 将父类 native method 重写为普通方法后，调用执行正常
 * @note 运行时用例：验证 override native method 的实际执行
 */
class BaseNative {
  native fetchData(): string
}
class ChildOverride extends BaseNative {
  override fetchData(): string {
    return "child implementation"
  }
}
function main(): void {
  let obj: ChildOverride = new ChildOverride()
  let result: string = obj.fetchData()
  if (result != "child implementation") {
    throw new Error("assertion failed: expected 'child implementation'")
  }
  console.log("override works: " + result)
}
