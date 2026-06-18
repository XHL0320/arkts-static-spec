/**
 * @id STM_08_15_015_RUNTIME_try_catch_only_sequential
 * @expect runtime
 * @section 8.15
 * @design 验证 try-catch-only（无 finally）在连续多个 try-catch 中的行为
 * @note 两个独立的 try-catch（均无 finally）分别处理无错误和有错误的情况
 */
function main(): void {
  let noErrorResult: int = 0;
  let errorResult: int = 0;

  // first try-catch: no error, catch must not execute
  try {
    noErrorResult = 500;
  } catch (e) {
    noErrorResult = -500;
  }

  // second try-catch: error thrown, catch must execute
  try {
    throw new Error("second error");
    errorResult = 999;
  } catch (e) {
    errorResult = 777;
  }

  if (noErrorResult != 500) {
    throw new Error("catch executed when no error was thrown in first block");
  }
  if (errorResult != 777) {
    throw new Error("catch did not execute when error was thrown in second block");
  }

  console.log("verified");
}
