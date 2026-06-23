/**
 * @id SEM_15_01_03_004_PASS_EXPR_INIT
 * @expect compile-pass
 * @section 15.1.3
 * @design 验证初始化器中表达式推断：复杂表达式作为初始化器
 * @note 正向用例：函数调用的返回值作为初始化器
 */
function makeInt(): int { return 42; }
function main(): void {
    let x = makeInt();
    let y: int = x;
    console.log(`${y}`);
}
