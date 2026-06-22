/**
 * @id SEM_15_11_01_001
 * @expect compile-pass
 * @section 15.11.1
 * @design 形成重载集：同名函数构成重载集
 * @note 正向用例
 */
function proc(x: int): string { return "int"; }
function proc(x: string): string { return "str"; }
function main(): void {
    let r: string = proc(42);
    console.log(r);
}
