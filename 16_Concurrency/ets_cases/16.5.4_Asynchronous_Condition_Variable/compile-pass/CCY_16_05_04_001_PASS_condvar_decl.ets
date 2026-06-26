/**
 * @id CCY_16_05_04_001_PASS_condvar_decl
 * @expect compile-pass
 * @section 16.5.4
 * @design concurrency.stackless.AsyncCondVar + concurrency.stackless.AsyncMutex 声明
 * @note 正向用例：验证 concurrency.stackless.AsyncCondVar 和 concurrency.stackless.AsyncMutex 配合声明编译通过
 */
let m: concurrency.stackless.AsyncMutex = new concurrency.stackless.AsyncMutex();
let cv: concurrency.stackless.AsyncCondVar = new concurrency.stackless.AsyncCondVar();
let flag: boolean = false;
