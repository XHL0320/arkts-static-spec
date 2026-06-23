/**
 * @id EXP_07_27_02_002_PASS_BIGINT_INT
 * @expect compile-pass
 * @section 7.27.2
 * @design bigint 与 int 类型关系运算编译通过，int 隐式转换为 bigint
 * @note 正向用例：验证 bigint < int 等混合类型编译通过
 *       Spec 示例：let b = 2n; b < 3  // true, '2' is converted implicitly to bigint
 */
function main(): void {
    let b: bigint = 2n;
    let n: int = 3;

    // bigint vs int
    let r1: boolean = b < n;
    let r2: boolean = b <= n;
    let r3: boolean = b > n;
    let r4: boolean = b >= n;

    // int vs bigint（交换操作数顺序）
    let r5: boolean = n > b;
    let r6: boolean = n >= b;
    let r7: boolean = n < b;
    let r8: boolean = n <= b;

    // 字面量
    let r9: boolean = 2n < 3;
    let r10: boolean = 2n >= 3;

    console.log("r1: " + r1);
}
