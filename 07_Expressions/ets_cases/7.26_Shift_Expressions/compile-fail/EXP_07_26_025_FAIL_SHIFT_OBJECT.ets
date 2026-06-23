/**
 * @id EXP_07_26_025_FAIL_SHIFT_OBJECT
 * @expect compile-fail
 * @section 7.26
 * @design Object 类型不能用于移位运算，应产生编译时错误
 * @note 反向用例：验证 Object >> int 被编译器拒绝
 *       Spec 规定：both operands must be of numeric types or type bigint
 */
function main(): void {
    let obj: Object = new Object();
    let shift: int = 2;
    let c: Object = obj >> shift;
    console.log("result: " + c);
}
