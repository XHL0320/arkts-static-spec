/**
 * @id CLS_09_07_022_FAIL_STATIC_WITH_ABSTRACT
 * @expect compile-fail
 * @section 9.7.1
 * @design static 不能与 abstract 组合
 * @note 反向用例
 */
abstract class Bad { abstract static foo(): void }
