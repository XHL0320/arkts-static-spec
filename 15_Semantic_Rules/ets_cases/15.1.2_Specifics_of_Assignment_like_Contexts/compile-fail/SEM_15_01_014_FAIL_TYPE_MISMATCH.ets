/**
 * @id SEM_15_01_014
 * @expect compile-fail
 * @section 15.1.2
 * @design 验证赋值上下文中类型不匹配拒绝：string 不可赋值给 int
 * @note 反向用例：类型不兼容的 RHS 赋值应报错
 */
function main(): void {
    let x: int;
    x = "hello";
}
