/**
 * @id AMB_14_04_01_010_RUNTIME_INDEXER_CONTEXT
 * @expect runtime
 * @section 14.4.1
 * @design ambient class 含 indexer 与 main 共存，验证不影响编译执行
 * @note 运行时用例：验证 ambient indexer 不影响其他代码运行
 */
declare class Indexable {
  [index: number]: string
}

function main(): void {
  let x: int = 7
  if (x != 7) {
    throw new Error("assertion failed: " + x)
  }
  console.log("verified")
}
