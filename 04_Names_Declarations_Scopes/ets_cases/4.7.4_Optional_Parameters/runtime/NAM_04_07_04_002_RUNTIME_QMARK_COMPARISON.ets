/**
 * @id NAM_04_07_04_002_RUNTIME_QMARK_COMPARISON
 * @expect runtime
 * @section 4.7.4
 * @design ? 短格式与显式 `T | undefined = undefined` 等价
 * @note 运行时用例：验证 spec 中可选参数 ? 形式与显式形式的运行时行为一致（§4.7.4 行 1046-1084）
 */
function hello1(name: string | undefined = undefined): string {
    if (name == undefined) { return "no name"; }
    return name;
}
function hello2(name?: string): string {
    if (name == undefined) { return "no name"; }
    return name;
}
function foo1(p?: number): number {
    if (p == undefined) { return -1; }
    return p;
}
function foo2(p: number | undefined = undefined): number {
    if (p == undefined) { return -1; }
    return p;
}
function main(): void {
    if (hello1() != "no name") { throw new Error("assertion failed"); }
    if (hello1("John") != "John") { throw new Error("assertion failed"); }
    if (hello2() != "no name") { throw new Error("assertion failed"); }
    if (hello2("John") != "John") { throw new Error("assertion failed"); }
    if (foo1() != -1) { throw new Error("assertion failed"); }
    if (foo1(5) != 5) { throw new Error("assertion failed"); }
    if (foo2() != -1) { throw new Error("assertion failed"); }
    if (foo2(5) != 5) { throw new Error("assertion failed"); }
    console.log("verified");
}
