/**
 * @id CCY_16_05_04_001_PASS_condvar_decl
 * @expect compile-pass
 * @section 16.5.4
 * @design AsyncCondVar + AsyncMutex 声明
 * @note 正向用例：验证 AsyncCondVar 和 AsyncMutex 配合声明编译通过
 */
let m: AsyncMutex = new AsyncMutex();
let cv: AsyncCondVar = new AsyncCondVar();
let flag: boolean = false;
