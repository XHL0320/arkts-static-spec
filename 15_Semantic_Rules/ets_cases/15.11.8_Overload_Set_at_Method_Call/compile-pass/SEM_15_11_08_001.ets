/**
 * @id SEM_15_11_08_001
 * @expect compile-pass
 * @section 15.11.8
 * @design 调用时重载集：按实参解析
 * @note 正向用例
 */
function show(x: int): string { return "i"; }
function show(x: string): string { return "s"; }
function main(): void {
    let r: string = show(1) + show("a");
    console.log(r);
}
