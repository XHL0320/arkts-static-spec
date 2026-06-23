/**
 * @id CLS_09_07_039_FAIL_ABSTRACT_NATIVE
 * @expect compile-fail
 * @section 9.7.3
 * @design abstract不能与native组合
 * @note 反向用例
 */
abstract class Bad { abstract native foo(): void }
