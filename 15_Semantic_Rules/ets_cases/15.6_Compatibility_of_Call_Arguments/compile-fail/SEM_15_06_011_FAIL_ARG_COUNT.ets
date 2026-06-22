/**
 * @id SEM_15_06_011
 * @expect compile-fail
 * @section 15.6
 * @design 验证参数数量不匹配：少传参数应报错
 * @note 反向用例：参数数量不匹配时编译拒绝
 */
function sum(a: int, b: int): int { return a + b; }
function main(): void {
    let r: int = sum(42);
}
