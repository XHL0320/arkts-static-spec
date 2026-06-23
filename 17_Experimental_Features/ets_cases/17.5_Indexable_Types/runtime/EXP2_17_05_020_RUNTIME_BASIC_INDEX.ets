/**
 * @id EXP2_17_05_020_RUNTIME_BASIC_INDEX
 * @expect runtime
 * @section 17.5
 * @design 运行时验证 $_get 和 $_set 实际被调用，索引读写返回正确值
 * @note 运行时用例：验证索引语法实际调用 $_get/$_set 并产生正确结果
 */
class DataStore {
  private items: string[] = ["alpha", "beta", "gamma"]

  $_get(index: int): string {
    return this.items[index]
  }

  $_set(index: int, value: string): void {
    this.items[index] = value
  }
}

function main(): void {
  let store: DataStore = new DataStore()

  // Test read via index
  let v0: string = store[0]
  if (v0 != "alpha") {
    throw new Error("assertion failed: store[0] expected alpha, got " + v0)
  }

  let v2: string = store[2]
  if (v2 != "gamma") {
    throw new Error("assertion failed: store[2] expected gamma, got " + v2)
  }

  // Test write via index
  store[1] = "delta"
  let v1: string = store[1]
  if (v1 != "delta") {
    throw new Error("assertion failed: store[1] after set expected delta, got " + v1)
  }

  // Test overwrite
  store[0] = "zero"
  if (store[0] != "zero") {
    throw new Error("assertion failed: store[0] after overwrite expected zero")
  }

  console.log("verified")
}
