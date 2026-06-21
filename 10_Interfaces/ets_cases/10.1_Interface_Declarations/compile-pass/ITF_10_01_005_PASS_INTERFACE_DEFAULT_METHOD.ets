/**
 * @id ITF_10_01_005_PASS_INTERFACE_DEFAULT_METHOD
 * @expect compile-pass
 * @section 10.1
 * @design 接口默认方法（实验特性，§10.5）
 * @note 正向用例：验证接口方法可以带默认实现体（experimental）
 */
interface Shape {
    area(): number { return 0; }
}
