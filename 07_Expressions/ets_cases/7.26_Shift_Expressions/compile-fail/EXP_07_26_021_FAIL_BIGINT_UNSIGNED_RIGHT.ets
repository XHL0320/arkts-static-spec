/**
 * @id EXP_07_26_021_FAIL_BIGINT_UNSIGNED_RIGHT
 * @expect compile-fail
 * @section 7.26
 * @design bigint 类型不支持 >>>（无符号右移），应产生编译时错误
 * @note 反向用例：验证 bigint >>> bigint 被编译器正确拒绝
 *       Spec 规定：compile-time error if '>>>' is applied to operands of type bigint
 */
function main(): void {
    let a: bigint = 16n;
    let b: bigint = 2n;
    let c: bigint = a >>> b;
    console.log("result: " + c);
}
