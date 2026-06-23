/**
 * @id EXP_07_27_04_005_PASS_BOOL_RETURN
 * @expect compile-pass
 * @section 7.27.4
 * @design 验证函数返回 boolean 值作为关系操作数编译通过
 * @note 正向用例：函数返回值作为 boolean 关系操作数
 */
function getTrue(): boolean {
    return true;
}
function getFalse(): boolean {
    return false;
}
let r1: boolean = getFalse() < getTrue();
let r2: boolean = getFalse() <= getFalse();
let r3: boolean = getTrue() > getFalse();
let r4: boolean = getTrue() >= getTrue();
let r5: boolean = getFalse() > getTrue();
let r6: boolean = getTrue() < getFalse();
