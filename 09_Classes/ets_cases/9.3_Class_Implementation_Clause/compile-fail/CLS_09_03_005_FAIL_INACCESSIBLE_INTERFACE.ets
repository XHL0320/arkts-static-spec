/**
 * @id CLS_09_03_005_FAIL_INACCESSIBLE_INTERFACE
 * @expect compile-fail
 * @section 9.3
 * @design implements不可访问的接口导致编译错误
 * @note 反向用例：spec规定implements不可访问接口类型报错
 */
class InaccImpl implements NonExistentInterface {
}
