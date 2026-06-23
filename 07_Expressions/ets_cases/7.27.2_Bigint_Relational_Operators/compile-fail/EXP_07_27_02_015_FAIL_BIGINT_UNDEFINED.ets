/**
 * @id EXP_07_27_02_015_FAIL_BIGINT_UNDEFINED
 * @expect compile-fail
 * @section 7.27.2
 * @design bigint 与 undefined 类型关系运算产生编译时错误
 * @note 反向用例：验证 bigint < undefined 等混合类型被编译器拒绝
 *       undefined 不是数值类型，bigint 关系运算符不允许
 */
function main(): void {
    let b: bigint = 2n;
    let r: boolean = b < undefined;
    console.log("r: " + r);
}
