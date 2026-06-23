/**
 * @id EXP_07_27_02_013_FAIL_BIGINT_OBJECT
 * @expect compile-fail
 * @section 7.27.2
 * @design bigint 与 Object 类型关系运算产生编译时错误
 * @note 反向用例：验证 bigint > Object 等混合类型被编译器拒绝
 *       Object 不是数值类型，bigint 关系运算符不允许
 */
function main(): void {
    let b: bigint = 2n;
    let o: Object = new Object();
    let r: boolean = b > o;
    console.log("r: " + r);
}
