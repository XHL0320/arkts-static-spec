/**
 * @id EXP_07_35_04_006_RUNTIME_LOOP_SCOPE_CAPTURE
 * @expect runtime
 * @section 7.35.4
 * @design 验证循环作用域捕获：每次循环迭代捕获不同的 index 值（对应 spec 示例 4）
 * @note 运行时用例：循环中每个 lambda 捕获的 index 值不同
 */
function main(): void {
  let storage: Array<() => int> = new Array<() => int>()

  // 每次循环迭代，let index 创建一个新的绑定
  for (let index = 0; index < 5; index++) {
    storage.push((): int => { return index })
  }

  // 验证每个 lambda 捕获了不同的 index
  let r0: int = storage[0]()
  if (r0 != 0) {
    throw new Error("assertion failed 0: expected 0, got " + r0)
  }

  let r1: int = storage[1]()
  if (r1 != 1) {
    throw new Error("assertion failed 1: expected 1, got " + r1)
  }

  let r2: int = storage[2]()
  if (r2 != 2) {
    throw new Error("assertion failed 2: expected 2, got " + r2)
  }

  let r3: int = storage[3]()
  if (r3 != 3) {
    throw new Error("assertion failed 3: expected 3, got " + r3)
  }

  let r4: int = storage[4]()
  if (r4 != 4) {
    throw new Error("assertion failed 4: expected 4, got " + r4)
  }

  // 验证重新调用产生的闭包也捕获新的 index
  let storage2: Array<() => int> = new Array<() => int>()
  for (let j = 0; j < 3; j++) {
    storage2.push((): int => { return j })
  }
  if (storage2[0]() != 0) {
    throw new Error("assertion failed 5: expected storage2[0]=0")
  }
  if (storage2[1]() != 1) {
    throw new Error("assertion failed 6: expected storage2[1]=1")
  }
  if (storage2[2]() != 2) {
    throw new Error("assertion failed 7: expected storage2[2]=2")
  }

  console.log("verified")
}
