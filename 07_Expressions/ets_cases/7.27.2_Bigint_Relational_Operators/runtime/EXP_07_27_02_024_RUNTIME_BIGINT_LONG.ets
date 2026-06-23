/**
 * @id EXP_07_27_02_024_RUNTIME_BIGINT_LONG
 * @expect runtime
 * @section 7.27.2
 * @design bigint 与 long 类型关系运算运行时验证，long 隐式转换为 bigint 后比较
 * @note 运行时用例：验证 bigint < long 等混合类型比较结果正确
 *       long 是整数类型，按规则转换为 bigint 后比较
 */
function main(): void {
    let b: bigint = 2n;
    let l: long = 3;

    // bigint < long
    if ((b < l) != true) { throw new Error("1: 2n < 3L should be true"); }
    if ((b < 1) != false) { throw new Error("2: 2n < 1L should be false"); }
    if ((b < 2) != false) { throw new Error("3: 2n < 2L should be false"); }

    // bigint <= long
    if ((b <= l) != true) { throw new Error("4: 2n <= 3L should be true"); }
    if ((b <= 2) != true) { throw new Error("5: 2n <= 2L should be true"); }
    if ((b <= 1) != false) { throw new Error("6: 2n <= 1L should be false"); }

    // bigint > long
    if ((b > 1) != true) { throw new Error("7: 2n > 1L should be true"); }
    if ((b > 2) != false) { throw new Error("8: 2n > 2L should be false"); }
    if ((b > l) != false) { throw new Error("9: 2n > 3L should be false"); }

    // bigint >= long
    if ((b >= 1) != true) { throw new Error("10: 2n >= 1L should be true"); }
    if ((b >= 2) != true) { throw new Error("11: 2n >= 2L should be true"); }
    if ((b >= l) != false) { throw new Error("12: 2n >= 3L should be false"); }

    // long vs bigint
    if ((l > b) != true) { throw new Error("13: 3L > 2n should be true"); }
    if ((l < b) != false) { throw new Error("14: 3L < 2n should be false"); }
    if ((l >= b) != true) { throw new Error("15: 3L >= 2n should be true"); }

    // 大值 long 比较
    let large: long = 2147483648; // 超过 int 范围
    let huge: bigint = 2147483648n;
    if ((huge <= large) != true) { throw new Error("16: 2147483648n <= long max should be true"); }
    if ((huge > large) != false) { throw new Error("17: 2147483648n > long max should be false"); }

    console.log("verified");
}
