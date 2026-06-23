/**
 * @id CLS_09_07_019_FAIL_ABSTRACT_STATIC
 * @expect compile-fail
 * @section 9.7.3
 * @design abstract不能与static组合
 * @note 反向用例：abstract static方法应编译失败
 */
abstract class Bad { abstract static foo(): void }
