/**
 * @id ITF_10_01_010_FAIL_INTERFACE_INSTANTIATION
 * @expect compile-fail
 * @section 10.1
 * @design 接口无法直接实例化
 * @note 反向用例：验证不能对接口类型使用 new 运算符
 */
interface Shape {
    area(): number;
}
let s: Shape = new Shape();
