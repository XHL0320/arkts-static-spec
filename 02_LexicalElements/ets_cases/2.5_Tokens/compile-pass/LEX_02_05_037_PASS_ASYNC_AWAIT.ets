/**
 * @id LEX_02_05_037_PASS_ASYNC_AWAIT
 * @expect compile-pass
 * @section 2.5
 * @design async/await 关键字
 * @note compile-pass 用例：验证 async/await 关键字
 */

// async/await 关键字
async function fetchData(): Promise<int> {
  return 42
}

async function main(): Promise<void> {
  let result = await fetchData()
}
