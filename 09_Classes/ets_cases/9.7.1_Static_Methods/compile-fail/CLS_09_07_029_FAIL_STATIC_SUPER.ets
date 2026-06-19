/**
 * @id CLS_09_07_029_FAIL_STATIC_SUPER
 * @expect compile-fail
 * @section 9.7.1
 * @design static方法不能使用super
 * @note 反向用例
 */
class Bad extends Object { static foo(): void { super.toString() } }
