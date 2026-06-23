/**
 * @id SEM_15_08_00_117_FAIL_ST_placeholder
 * @expect compile-fail
 * @section 15.8
 * @design 智能转换拒绝：未收窄的联合类型直接赋值
 * @note 反向用例：string|int 未通过 instanceof/null 检查直接赋值给 string
 */
function main(): void {
    let x: string | int = 42;
    let s: string = x;
}
