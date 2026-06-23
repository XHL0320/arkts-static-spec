/**
 * @id EXP_07_26_023_FAIL_SHIFT_STRING
 * @expect compile-fail
 * @section 7.26
 * @design string 类型不能用于移位运算，应产生编译时错误
 * @note 反向用例：验证 string << int 被编译器拒绝
 *       Spec 规定：both operands must be of numeric types or type bigint
 */
function main(): void {
    let s: string = "hello";
    let shift: int = 2;
    let c: string = s << shift;
    console.log("result: " + c);
}
