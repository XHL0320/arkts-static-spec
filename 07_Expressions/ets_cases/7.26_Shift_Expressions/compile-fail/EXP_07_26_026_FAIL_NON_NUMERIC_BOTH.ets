/**
 * @id EXP_07_26_026_FAIL_NON_NUMERIC_BOTH
 * @expect compile-fail
 * @section 7.26
 * @design 双方都为非数值类型的移位运算应产生编译时错误
 * @note 反向用例：验证 string >>> string 被编译器拒绝
 *       Spec 规定：both operands must be of numeric types or type bigint
 */
function main(): void {
    let s1: string = "hello";
    let s2: string = "world";
    let c: string = s1 >>> s2;
    console.log("result: " + c);
}
