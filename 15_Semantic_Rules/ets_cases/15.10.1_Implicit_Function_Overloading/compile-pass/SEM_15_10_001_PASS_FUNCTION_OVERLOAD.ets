/**
 * @id SEM_15_10_001
 * @expect compile-pass
 * @section 15.10.1
 * @design 验证函数重载：同名函数不同参数类型可共存
 * @note 正向用例：foo(int) 和 foo(string) 构成重载集并按参数类型解析
 */
function foo(x: int): string { return "int"; }
function foo(x: string): string { return "string"; }
function main(): void {
    let r1: string = foo(42);
    let r2: string = foo("hi");
    console.log(`${r1} ${r2}`);
}
