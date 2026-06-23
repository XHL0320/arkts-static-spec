/**
 * @id EXP_07_26_004_PASS_BYTE_SHORT_PROMOTION
 * @expect compile-pass
 * @section 7.26
 * @design byte/short 左操作数在移位运算中自动提升为 int
 * @note 正向用例：验证 byte/short 类型左操作数自动提升为 int
 *       结果类型为 int（提升后的左操作数类型）
 */
function main(): void {
    let b: byte = 8;
    let s: short = 16;
    let shift: int = 2;

    // byte 左操作数提升为 int
    let r1: int = b << shift;
    let r2: int = b >> shift;
    let r3: int = b >>> shift;

    // short 左操作数提升为 int
    let r4: int = s << shift;
    let r5: int = s >> shift;
    let r6: int = s >>> shift;

    // byte 字面量
    let r7: int = 8 as byte << 2;
    let r8: int = 16 as short >> 2;

    console.log("results: " + r1 + " " + r2 + " " + r3 + " " + r4 + " " + r5 + " " + r6);
}
