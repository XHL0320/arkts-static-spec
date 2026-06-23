/**
 * @id EXP_07_26_024_FAIL_SHIFT_BOOLEAN
 * @expect compile-fail
 * @section 7.26
 * @design boolean 类型不能用于移位运算，应产生编译时错误
 * @note 反向用例：验证 boolean << int 被编译器拒绝
 *       Spec 规定：both operands must be of numeric types or type bigint
 */
function main(): void {
    let b: boolean = true;
    let shift: int = 2;
    let c: boolean = b << shift;
    console.log("result: " + c);
}
