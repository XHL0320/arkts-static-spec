/**
 * @id EXP2_17_13_5_012_RUNTIME_RECEIVER_FUNC_COUNT_VERIFY
 * @expect runtime
 * @section 17.13.5
 * @design 运行时验证：接收者函数中this.count自增正确反映接收者状态
 * @note 运行时用例：实际执行验证无歧义场景下this.count正确更新
 */
class DataStore { count: number = 0 }
function update(this: DataStore): number { this.count = this.count + 1; return this.count }
function main(): void {
  let ds: DataStore = new DataStore(); ds.count = 10
  let r1: number = ds.update()
  if (r1 != 11) { throw new Error("assertion failed: expected 11, got " + r1) }
  let r2: number = ds.update()
  if (r2 != 12) { throw new Error("assertion failed: expected 12, got " + r2) }
  let r3: number = update(ds)
  if (r3 != 13) { throw new Error("assertion failed: expected 13, got " + r3) }
  console.log("verified")
}
