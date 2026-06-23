/**
 * @id EXP2_17_13_2_005_PASS_GENERIC_CLASS_RECEIVER
 * @expect compile-pass
 * @section 17.13.2
 * @design 泛型类作为接收者类型：合法接收者类型
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class Wrapper<T> { inner: T | undefined }
function unwrap<T>(this: Wrapper<T>): T | undefined { return this.inner }
function wrap<T>(this: Wrapper<T>, value: T): void { this.inner = value }
function testGenericClassReceiver(): void {
  let w: Wrapper<number> = new Wrapper<number>()
  w.wrap(100)
  let val: number | undefined = w.unwrap()
  console.log("compiled successfully")
}
