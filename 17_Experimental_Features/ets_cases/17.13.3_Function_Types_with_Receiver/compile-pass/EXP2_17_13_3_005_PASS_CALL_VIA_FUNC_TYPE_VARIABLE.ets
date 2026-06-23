/**
 * @id EXP2_17_13_3_005_PASS_CALL_VIA_FUNC_TYPE_VARIABLE
 * @expect compile-pass
 * @section 17.13.3
 * @design 通过函数类型变量以普通调用语法使用接收者函数
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class Entry { key: string = ""; val: string = "" }
type EntryFormatter = (this: Entry) => string
function testCallViaVariable(): void {
  let formatter: EntryFormatter = (this: Entry): string => { return this.key + "=" + this.val }
  let e: Entry = new Entry(); e.key = "name"; e.val = "Alice"
  let formatted: string = formatter(e)
  console.log("compiled successfully")
}
