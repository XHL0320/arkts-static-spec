/**
 * @id EXP_07_27_02_006_PASS_BIGINT_FLOAT
 * @expect compile-pass
 * @section 7.27.2
 * @design bigint 与 float 类型关系运算编译通过，两者都转换为 double 后比较
 * @note 正向用例：验证 bigint < float 等混合类型编译通过
 *       Spec 示例：const f = 3.f; b < f // true, 'b' and 'f' are converted to double
 *       注意：float 字面量必须用 f 后缀，否则是 Double 类型
 */
function main(): void {
    let b: bigint = 2n;
    let f: float = 3.0f;

    // bigint vs float
    let r1: boolean = b < f;
    let r2: boolean = b <= f;
    let r3: boolean = b > f;
    let r4: boolean = b >= f;

    // float vs bigint
    let r5: boolean = f > b;
    let r6: boolean = f >= b;
    let r7: boolean = f < b;
    let r8: boolean = f <= b;

    // 字面量
    let r9: boolean = 2n < 3.0f;
    let r10: boolean = 2n >= 3.0f;

    console.log("r1: " + r1);
}
