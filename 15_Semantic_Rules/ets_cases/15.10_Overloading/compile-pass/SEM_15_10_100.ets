/**
 * @id SEM_15_10_100
 * @expect compile-pass
 * @section 15.10
 * @design 重载基础：函数重载解析
 * @note 正向用例
 */
function add(x: int): int { return x; }
function add(x: int, y: int): int { return x + y; }
function main(): void {
    let r1: int = add(1);
    let r2: int = add(1, 2);
    console.log(`${r1} ${r2}`);
}
