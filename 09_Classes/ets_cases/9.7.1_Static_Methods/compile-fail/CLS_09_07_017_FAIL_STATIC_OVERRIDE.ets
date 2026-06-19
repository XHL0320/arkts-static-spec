/**
 * @id CLS_09_07_017_FAIL_STATIC_OVERRIDE
 * @expect compile-fail
 * @section 9.7.1
 * @design static方法不能与override组合
 * @note 反向用例：static override方法应编译失败
 */
class Base { foo(): void {} }
class Bad extends Base { static override foo(): void {} }
