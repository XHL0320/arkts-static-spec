/**
 * @id EXP_07_27_05_003_PASS_CHAR_CONST
 * @expect compile-pass
 * @section 7.27.5
 * @design 验证 const char 常量之间关系运算编译通过
 * @note 正向用例：验证 char 类型 const 常量使用 <, <=, >, >= 编译通过
 */
function main(): void {
    const A: char = c'A';
    const Z: char = c'Z';
    const ZERO: char = c'0';

    let r1: boolean = A < Z;       // 'A'(65) < 'Z'(90) = true
    let r2: boolean = A <= A;      // 'A' <= 'A' = true
    let r3: boolean = Z > A;       // 'Z' > 'A' = true
    let r4: boolean = Z >= Z;      // 'Z' >= 'Z' = true
    let r5: boolean = ZERO < A;    // '0'(48) < 'A'(65) = true
    let r6: boolean = Z > ZERO;    // 'Z'(90) > '0'(48) = true

    console.log("PASS: " + r1 + " " + r2 + " " + r3 + " " + r4);
}
