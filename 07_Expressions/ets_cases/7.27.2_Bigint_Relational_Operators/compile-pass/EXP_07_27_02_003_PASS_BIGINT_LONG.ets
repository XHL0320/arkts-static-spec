/**
 * @id EXP_07_27_02_003_PASS_BIGINT_LONG
 * @expect compile-pass
 * @section 7.27.2
 * @design bigint 与 long 类型关系运算编译通过，long 隐式转换为 bigint
 * @note 正向用例：验证 bigint < long 等混合类型编译通过
 *       long 是整数类型，按规则转换为 bigint 后比较
 */
function main(): void {
    let b: bigint = 2n;
    let l: long = 3;

    // bigint vs long
    let r1: boolean = b < l;
    let r2: boolean = b <= l;
    let r3: boolean = b > l;
    let r4: boolean = b >= l;

    // long vs bigint
    let r5: boolean = l > b;
    let r6: boolean = l >= b;
    let r7: boolean = l < b;
    let r8: boolean = l <= b;

    // 大值 long
    let big: long = 2147483648; // 超过 int 范围的值
    let r9: boolean = b < big;

    console.log("r1: " + r1);
}
