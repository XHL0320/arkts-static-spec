/**
 * @id EXP_07_27_05_023_RUNTIME_NUMERIC
 * @expect runtime
 * @section 7.27.5
 * @design 验证 char 与数值类型的隐式转换比较（char + int/long/double）
 * @note 运行时用例：char 操作数隐式拓宽为 int/long/double 后与数值类型比较
 *       'A' = 65, 'a' = 97, '0' = 48
 */
function main(): void {
    let c: char = c'A';  // 65
    let sixtyFive: long = 65;
    let sixtySix: long = 66;

    // char vs int (char → int)
    if ((c < 66) != true) { throw new Error("FAIL: 'A'(65) < 66 should be true"); }
    if ((c <= 65) != true) { throw new Error("FAIL: 'A'(65) <= 65 should be true"); }
    if ((c > 66) != false) { throw new Error("FAIL: 'A'(65) > 66 should be false"); }
    if ((c >= 65) != true) { throw new Error("FAIL: 'A'(65) >= 65 should be true"); }

    // char vs long (char → long)
    if ((c < sixtySix) != true) { throw new Error("FAIL: 'A'(65) < 66L should be true"); }
    if ((c <= sixtyFive) != true) { throw new Error("FAIL: 'A'(65) <= 65L should be true"); }
    if ((c > sixtyFive) != false) { throw new Error("FAIL: 'A'(65) > 65L should be false"); }
    if ((c >= sixtySix) != false) { throw new Error("FAIL: 'A'(65) >= 66L should be false"); }

    // char vs double (char → double)
    if ((c < 65.0) != false) { throw new Error("FAIL: 'A'(65) < 65.0 should be false"); }
    if ((c <= 65.0) != true) { throw new Error("FAIL: 'A'(65) <= 65.0 should be true"); }
    if ((c > 65.5) != false) { throw new Error("FAIL: 'A'(65) > 65.5 should be false"); }
    if ((c >= 65.0) != true) { throw new Error("FAIL: 'A'(65) >= 65.0 should be true"); }

    console.log("verified");
}
