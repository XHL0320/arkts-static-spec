/**
 * @id SEM_15_01_04_001_PASS_NUMERIC_OPERATOR_WIDEN
 * @expect compile-pass
 * @section 15.1.4
 * @design 验证数值运算符操作数拓宽到更大类型（最低 int）
 * @note 正向用例：int+int→int, int+double→double, byte+short→int
 */
function main(): void {
    let a: int = 10;
    let b: int = 20;
    let c = a + b;
    let d: double = 3.5;
    let e = a + d;
    let f: byte = 5;
    let g: short = 10;
    let h = f + g;
    console.log(`c=${c}, e=${e}, h=${h}`);
}
