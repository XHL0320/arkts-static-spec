/**
 * @id AMB_14_04_03_007_RUNTIME_ITERABLE_CONTEXT
 * @expect runtime
 * @section 14.4.3
 * @design ambient iterable 与 main 共存
 * @note 运行时用例：验证 iterable 不影响其他代码运行
 */
declare class C {
  [Symbol.iterator](): Iterator<int>
}

function main(): void {
  let x: int = 1
  if (x != 1) {
    throw new Error("assertion failed")
  }
  console.log("verified")
}
