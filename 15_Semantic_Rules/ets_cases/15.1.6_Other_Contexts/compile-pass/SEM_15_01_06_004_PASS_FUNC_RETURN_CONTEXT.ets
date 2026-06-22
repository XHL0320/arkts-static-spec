/**
 * @id SEM_15_01_06_004
 * @expect compile-pass
 * @section 15.1.6
 * @design 其他上下文：未分类表达式中的类型注解变量声明
 * @note 正向用例：函数返回类型作为兜底上下文
 */
function getValue(): int {
    let x = 42;
    return x;
}
function main(): void {
    let v: int = getValue();
    console.log(`${v}`);
}
