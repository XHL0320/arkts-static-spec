/**
 * @id CCY_16_06_02_003
 * @expect compile-pass
 * @section 16.6.2
 * @design async main 启动多个并发 job
 * @note 正向用例：验证 async main + 多 job 编译通过
 */
async function main(): Promise<void> {
  await Promise.all([
    Promise.resolve(1),
    Promise.resolve(2),
    Promise.resolve(3),
  ]);
}
