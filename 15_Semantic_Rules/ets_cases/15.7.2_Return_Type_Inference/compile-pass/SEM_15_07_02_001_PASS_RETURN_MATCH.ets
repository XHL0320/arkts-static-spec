/**
 * @id SEM_15_07_02_001
 * @expect compile-pass
 * @section 15.7.2
 * @design 验证函数返回类型推断：显式返回类型匹配
 * @note 正向用例：返回类型与函数声明的返回类型一致
 */
function add(a: int, b: int): int { return a + b; }
function main(): void {
    let r: int = add(3, 4);
    console.log(`r=${r}`);
}
