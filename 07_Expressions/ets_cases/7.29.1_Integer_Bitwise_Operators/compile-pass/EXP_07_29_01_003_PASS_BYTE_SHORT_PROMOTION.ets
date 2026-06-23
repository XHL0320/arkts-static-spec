/**
 * @id EXP_07_29_01_003_PASS_BYTE_SHORT_PROMOTION
 * @expect compile-pass
 * @section 7.29.1
 * @design byte 和 short 类型在位运算中自动提升为 int 的编译通过验证
 * @note 正向用例：验证 byte/short 类型在 &, ^, | 运算中提升为 int
 */
function main(): void {
    let b1: byte = 15;
    let b2: byte = 7;

    // byte & byte → 提升为 int
    let byteAnd: int = b1 & b2;
    let byteXor: int = b1 ^ b2;
    let byteOr: int = b1 | b2;

    let s1: short = 60;
    let s2: short = 13;

    // short & short → 提升为 int
    let shortAnd: int = s1 & s2;
    let shortXor: int = s1 ^ s2;
    let shortOr: int = s1 | s2;

    // byte & short → 均提升为 int
    let mixedAnd: int = b1 & s1;
    let mixedXor: int = b1 ^ s1;
    let mixedOr: int = b1 | s1;

    console.log("byte short promotion: " + byteAnd);
}
