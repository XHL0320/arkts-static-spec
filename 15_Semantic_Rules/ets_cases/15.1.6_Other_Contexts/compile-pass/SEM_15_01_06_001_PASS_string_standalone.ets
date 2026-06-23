/**
 * @id SEM_15_01_06_001_PASS_string_standalone
 * @expect compile-pass
 * @section 15.1.6
 * @design 其他上下文：独立字符串表达式推断
 * @note 正向用例：字符串字面量作为独立表达式推断为 string
 */
function main(): void {
    let s = "standalone";
    let t: string = s;
    console.log(t);
}
