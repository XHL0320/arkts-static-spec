/**
 * @id SEM_15_01_08_001
 * @expect compile-pass
 * @section 15.1.8
 * @design 语义基础总结：综合表达式验证
 * @note 正向用例
 */
function main(): void {
    let a: int = 1 + 2;
    let b: double = 3.14 * 2.0;
    let c: boolean = 10 > 5;
    console.log(`${a} ${b} ${c}`);
}
