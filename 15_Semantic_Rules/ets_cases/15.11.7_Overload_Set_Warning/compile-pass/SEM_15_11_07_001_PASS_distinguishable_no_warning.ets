/**
 * @id SEM_15_11_07_001
 * @expect compile-pass
 * @section 15.11.7
 * @design 可区分重载无警告：不同类型参数可区分
 * @note 正向用例：int 和 string 参数区分明确
 */
function f(x: int): string { return "i"; }
function f(x: string): string { return "s"; }
function main(): void {
    console.log(f(1));
}
