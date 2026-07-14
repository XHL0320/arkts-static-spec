/**
 * @id GEN_05_01_01_105_FAIL_UNCONSTRAINED_OBJECT
 * @expect compile-fail
 * @section 5.1.1
 * @design 无约束类型参数不兼容Object
 * @note 反向用例：验证无约束T默认extends Any，不兼容Object类型
 */
function f<T>(x: T): Object {
    return x;
}
