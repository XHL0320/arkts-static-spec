/**
 * @id SEM_15_08_04_100_FAIL_smart_narrow_mismatch
 * @expect compile-fail
 * @section 15.8.4
 * @design 智能类型拒绝：未收窄的联合类型不能赋值
 * @note 反向用例：string|int 未收窄直接赋值给 string 导致编译失败
 */
function main(): void {
    let x: string|int = 1;
    let s: string = x;
}
