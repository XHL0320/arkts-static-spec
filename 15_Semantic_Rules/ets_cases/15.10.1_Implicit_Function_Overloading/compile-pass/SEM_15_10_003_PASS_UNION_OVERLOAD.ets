/**
 * @id SEM_15_10_003
 * @expect compile-pass
 * @section 15.10.1
 * @design 验证联合类型参数重载：参数类型为联合类型时的重载解析
 * @note 正向用例：parse(int|string) 和 parse(boolean) 可区分解析
 */
function parse(x: int|string): string { return "num_or_str"; }
function parse(x: boolean): string { return "bool"; }
function main(): void {
    let r1: string = parse(42);
    let r2: string = parse("hi");
    let r3: string = parse(true);
    console.log(`${r1} ${r2} ${r3}`);
}
