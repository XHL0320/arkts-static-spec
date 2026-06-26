/**
 * @id CCY_16_05_02_001_PASS_async_mutex_decl
 * @expect compile-pass
 * @section 16.5.2
 * @design concurrency.stackless.AsyncMutex 声明
 * @note 正向用例：验证 concurrency.stackless.AsyncMutex 创建和声明编译通过
 */
let mutex: concurrency.stackless.AsyncMutex = new concurrency.stackless.AsyncMutex();
