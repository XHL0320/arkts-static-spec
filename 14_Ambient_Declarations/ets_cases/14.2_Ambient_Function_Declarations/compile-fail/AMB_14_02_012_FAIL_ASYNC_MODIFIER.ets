/**
 * @id AMB_14_02_012_FAIL_ASYNC_MODIFIER
 * @expect compile-fail
 * @section 14.2
 * @design declare async function 使用 async 修饰符，违反 spec
 * @note 反向用例：ambient function 带 async 修饰符应产生编译时错误
 */
declare async function bad4(): void
