/**
 * @id SEM_15_14_001_PASS_TERNARY
 * @expect compile-pass
 * @section 15.14.1
 * @design 验证扩展条件表达式：三元表达式类型推断
 * @note 正向用例：条件 ? int : string 推断为 int|string
 */
function main(): void {
    let flag: boolean = true;
    let x: int|string = flag ? 42 : "hello";
    console.log(`${x}`);
}
