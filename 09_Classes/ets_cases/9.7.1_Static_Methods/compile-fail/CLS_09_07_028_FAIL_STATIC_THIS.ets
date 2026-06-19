/**
 * @id CLS_09_07_028_FAIL_STATIC_THIS
 * @expect compile-fail
 * @section 9.7.1
 * @design static方法不能使用this
 * @note 反向用例
 */
class Bad { static foo(): void { let x = this } }
