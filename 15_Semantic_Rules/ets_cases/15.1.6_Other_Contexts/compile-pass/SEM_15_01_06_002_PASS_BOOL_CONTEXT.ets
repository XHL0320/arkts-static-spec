/**
 * @id SEM_15_01_06_002_PASS_BOOL_CONTEXT
 * @expect compile-pass
 * @section 15.1.6
 * @design 其他上下文：独立布尔表达式推断
 * @note 正向用例：true 作为独立表达式推断为 boolean
 */
function main(): void {
    let b = true;
    let c: boolean = b;
    console.log(`${c}`);
}
