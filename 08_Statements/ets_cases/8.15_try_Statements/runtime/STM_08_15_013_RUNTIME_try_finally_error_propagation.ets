/**
 * @id STM_08_15_013_RUNTIME_try_finally_error_propagation
 * @expect runtime
 * @section 8.15
 * @design 验证 try-finally（无 catch）中抛出错误时 finally 执行且错误向上传播
 * @note finally 在错误传播前执行；调用方能够捕获传播的错误
 */
let g_finallyExecuted: int = 0;

function throwInTryFinally(): void {
  try {
    throw new Error("error in try");
  } finally {
    g_finallyExecuted = 1;
  }
}

function main(): void {
  let errorCaught: int = 0;

  try {
    throwInTryFinally();
  } catch (e) {
    errorCaught = 1;
  }

  if (g_finallyExecuted != 1) {
    throw new Error("finally was not executed before error propagation");
  }
  if (errorCaught != 1) {
    throw new Error("error was not propagated to caller");
  }

  console.log("verified");
}
