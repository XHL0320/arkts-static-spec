/**
 * @id STM_08_15_014_RUNTIME_try_finally_normal
 * @expect runtime
 * @section 8.15
 * @design 验证 try-finally（无 catch）正常完成时 finally 子句始终执行
 * @note try 块正常完成不抛错，finally 仍然执行，执行顺序为 try 后 finally
 */
function main(): void {
  let flag: int = 0;

  try {
    flag = 10;
  } finally {
    flag = flag + 1;
  }

  if (flag != 11) {
    throw new Error("finally did not execute after normal try completion");
  }

  console.log("verified");
}
