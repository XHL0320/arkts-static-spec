/**
 * @id EXP2_17_13_3_012_RUNTIME_GENERIC_FUNC_TYPE_RECEIVER
 * @expect runtime
 * @section 17.13.3
 * @design 运行时验证：泛型接收者函数类型变量正确执行
 * @note 运行时用例：实际执行验证泛型函数类型带接收者
 */
class Slot<T> { item: T | undefined }
type SlotAccessor<T> = (this: Slot<T>) => T | undefined
function main(): void {
  let getItem: SlotAccessor<string> = (this: Slot<string>): string | undefined => { return this.item }
  let slot: Slot<string> = new Slot<string>(); slot.item = "found"
  let r: string | undefined = getItem(slot)
  if (r != "found") { throw new Error("assertion failed: expected 'found', got '" + r + "'") }
  console.log("verified")
}
