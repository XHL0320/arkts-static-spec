/**
 * @id NAM_04_05_026_RUNTIME_ALIAS_FUNC_TYPE
 * @expect runtime
 * @section 4.5.1
 * @design 函数类型别名运行时
 * @note 运行时用例：验证函数类型别名运行时调用正确
 */
type BinOp = (a: number, b: number) => number;
function apply(op: BinOp, x: number, y: number): number {
    return op(x, y);
}
function add(a: number, b: number): number {
    return a + b;
}
function main(): void {
    if (apply(add, 3, 4) != 7) {
        throw new Error("assertion failed: " + apply(add, 3, 4));
    }
    console.log("verified");
}
