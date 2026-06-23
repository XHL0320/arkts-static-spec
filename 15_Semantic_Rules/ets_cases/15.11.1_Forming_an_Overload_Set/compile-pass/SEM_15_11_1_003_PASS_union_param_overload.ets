/**
 * @id SEM_15_11_1_003_PASS_union_param_overload
 * @expect compile-pass
 * @section 15.11.1
 * @design 联合类型参数形成重载
 * @note ⽐正向用例
 */
function calc(x: int | string): string { return "int"; }
function calc(x: boolean): string { return "bool"; }
function main(): void {
    let r: string = calc(42);
    console.log(r);
}
