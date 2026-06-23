/**
 * @id SEM_15_02_03_002_PASS_int_widens_to_number
 * @expect compile-pass
 * @section 15.2.3
 * @design 验证 int 可隐式拓宽为 number：int 字面量可赋值给 number|string 联合类型
 * @note 正向用例：int → number 隐式拓宽符合 Spec 数值拓宽规则
 */
function main(): void {
    let u: number|string = 1;
}
