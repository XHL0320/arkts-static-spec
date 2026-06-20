/**
 * @id NAM_04_03_005_PASS_SHADOWING
 * @expect compile-pass
 * @section 4.3
 * @design 内层声明覆盖外层
 * @note 正向用例：验证内层同名声明覆盖外层
 */
let x: number = 1;
function foo(): void {
    let x: string = "shadowed";
}
