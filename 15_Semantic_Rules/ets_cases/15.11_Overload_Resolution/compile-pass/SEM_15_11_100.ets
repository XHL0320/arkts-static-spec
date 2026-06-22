/**
 * @id SEM_15_11_100
 * @expect compile-pass
 * @section 15.11
 * @design 重载解析：按参数类型选择最佳匹配
 * @note 正向用例
 */
function fmt(x: int): string { return "int:" + x.toString(); }
function fmt(x: string): string { return "str:" + x; }
function main(): void {
    let r: string = fmt(42);
    console.log(r);
}
