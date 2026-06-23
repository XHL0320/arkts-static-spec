/**
 * @id CCY_16_06_03_005
 * @expect compile-pass
 * @section 16.6.3
 * @design Promise rejection 通过 .catch 捕获
 * @note 正向用例：验证 Promise 错误传播通过 .catch 处理编译通过
 */
new Promise<void>((_: (value: void) => void, reject: (reason: Error) => void): void => {
  reject(new Error("fail"));
}).catch((e: Error): void => {
  console.error(e.message);
});
