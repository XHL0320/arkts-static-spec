/**
 * @id STM_08_02_002_PASS_increment_decrement
 * @expect compile-pass
 * @section 8.2
 * @design 测试自增自减表达式作为语句，包括前缀和后缀形式
 * @note 自增自减表达式作为语句应编译通过，结果被丢弃
 */
function testPrefixIncrement(): void {
    let x: int = 0;
    ++x;
    ++x;
}

function testPostfixIncrement(): void {
    let x: int = 0;
    x++;
    x++;
}

function testPrefixDecrement(): void {
    let x: int = 10;
    --x;
    --x;
}

function testPostfixDecrement(): void {
    let x: int = 10;
    x--;
    x--;
}

function testMixedIncrementDecrement(): void {
    let x: int = 5;
    ++x;
    x++;
    --x;
    x--;
}
