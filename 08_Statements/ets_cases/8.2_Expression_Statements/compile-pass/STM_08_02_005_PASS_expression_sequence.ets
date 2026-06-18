/**
 * @id STM_08_02_005_PASS_expression_sequence
 * @expect compile-pass
 * @section 8.2
 * @design 测试多种表达式语句组合和连续使用
 * @note 在一个函数中连续使用多种表达式语句应编译通过
 */
let globalSum: int = 0;

function accumulate(x: int): void {
    globalSum += x;
}

function testVariousExpressions(): void {
    let a: int = 0;
    let b: int = 0;
    let flag: boolean = true;

    // 简单赋值
    a = 1;
    // 自增
    a++;
    // 复合赋值
    b += a;
    // 函数调用
    accumulate(b);
    // 条件表达式
    a = flag ? 10 : 20;
    // 数组访问
    let arr: int[] = [1, 2, 3];
    arr[0] = 99;
    // 连续赋值
    a = b = 100;
}

function testTernaryExpressionStatement(): void {
    let x: int = 0;
    let cond: boolean = false;
    x = cond ? 1 : 2;
}
