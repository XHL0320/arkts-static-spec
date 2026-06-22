/**
 * @id SEM_15_01_06_001
 * @expect compile-pass
 * @section 15.1.6
 * @design 其他上下文：独立字符串表达式推断
 * @note 正向用例
 */
function main(): void {
    let s = "standalone";
    let t: string = s;
    console.log(t);
}
