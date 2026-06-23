/**
 * @id SEM_15_10_01_100_FAIL_ERASURE_AMBIGUOUS
 * @expect compile-fail
 * @section 15.10.1
 * @design 验证重载解析 — 类型擦除后签名不可区分时报错
 * @note 反向用例：泛型类型擦除后重载不可区分应拒绝
 */
function foo(x: int[]): string { return "int_arr"; }
function foo(x: string[]): string { return "str_arr"; }
function main(): void {
    let r: string = foo([1, 2]);
}
