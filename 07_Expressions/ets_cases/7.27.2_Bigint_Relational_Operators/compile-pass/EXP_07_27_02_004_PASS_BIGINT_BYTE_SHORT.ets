/**
 * @id EXP_07_27_02_004_PASS_BIGINT_BYTE_SHORT
 * @expect compile-pass
 * @section 7.27.2
 * @design bigint 与 byte/short 类型关系运算编译通过，byte/short 隐式转换为 bigint
 * @note 正向用例：验证 bigint < byte / bigint < short 等混合类型编译通过
 *       byte/short 是整数类型，按规则转换为 bigint 后比较
 */
function main(): void {
    let b: bigint = 2n;
    let bt: byte = 3;
    let s: short = 5;

    // bigint vs byte
    let r1: boolean = b < bt;
    let r2: boolean = b <= bt;
    let r3: boolean = b > bt;
    let r4: boolean = b >= bt;

    // byte vs bigint
    let r5: boolean = bt > b;
    let r6: boolean = bt <= b;

    // bigint vs short
    let r7: boolean = b < s;
    let r8: boolean = b <= s;
    let r9: boolean = b > s;
    let r10: boolean = b >= s;

    // short vs bigint
    let r11: boolean = s > b;
    let r12: boolean = s >= b;

    // 负值
    let neg: byte = -1;
    let r13: boolean = b > neg;

    console.log("r1: " + r1);
}
