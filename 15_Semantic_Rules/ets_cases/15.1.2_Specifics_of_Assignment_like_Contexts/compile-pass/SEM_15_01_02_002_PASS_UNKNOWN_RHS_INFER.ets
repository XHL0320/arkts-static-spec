/**
 * @id SEM_15_01_02_002_PASS_UNKNOWN_RHS_INFER
 * @expect compile-pass
 * @section 15.1.2
 * @design 验证赋值上下文中 RHS 类型未知时从 LHS 类型推断
 * @note 正向用例：RHS 的无类型字面量应根据 LHS 类型推断
 */
function main(): void {
    let x: int;
    x = 42;
    let s: string;
    s = "test";
    console.log(`x=${x}, s=${s}`);
}
