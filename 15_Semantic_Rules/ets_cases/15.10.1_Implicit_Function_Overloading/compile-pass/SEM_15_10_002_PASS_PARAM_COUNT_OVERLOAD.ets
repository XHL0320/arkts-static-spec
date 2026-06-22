/**
 * @id SEM_15_10_002
 * @expect compile-pass
 * @section 15.10.1
 * @design 验证多参数重载：不同参数数量的函数重载
 * @note 正向用例：sum(int) 和 sum(int, int) 按参数数量解析
 */
function sum(a: int): int { return a; }
function sum(a: int, b: int): int { return a + b; }
function main(): void {
    let r1: int = sum(1);
    let r2: int = sum(1, 2);
    console.log(`${r1} ${r2}`);
}
