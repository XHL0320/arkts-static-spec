/**
 * @id CLS_09_01_007_FAIL_CLASS_EXTENDS_ITSELF
 * @expect compile-fail
 * @section 9.1
 * @design extends 自身导致循环依赖编译错误
 * @note 反向用例：验证类不能 extends 自身
 */
class SelfRef extends SelfRef {
}

