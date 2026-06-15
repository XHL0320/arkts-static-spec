/**
 * @id LEX_02_07_019_PASS_HARD_KW_ASYNC_AWAIT
 * @expect compile-pass
 * @section 2.7
 * @design 硬关键字: async, await
 * @note 正向用例：异步关键字
 */
async function fetch019(): Promise<int> {
  return 42
}

async function test019(): Promise<void> {
  let v: int = await fetch019()
}
