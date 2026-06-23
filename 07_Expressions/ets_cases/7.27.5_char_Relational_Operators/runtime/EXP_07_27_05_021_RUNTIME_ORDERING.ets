/**
 * @id EXP_07_27_05_021_RUNTIME_ORDERING
 * @expect runtime
 * @section 7.27.5
 * @design 验证 char 字符序：ASCII 字母/数字的大小关系，4 运算符 × 4 组合（16 断言）
 * @note 运行时用例：基于 unsigned 16-bit 数值的字符序验证
 *       '0'(48) < '9'(57) < 'A'(65) < 'Z'(90) < 'a'(97) < 'z'(122)
 */
function main(): void {
    let zero: char = c'0';
    let nine: char = c'9';
    let capA: char = c'A';
    let capZ: char = c'Z';
    let lowA: char = c'a';
    let lowZ: char = c'z';

    // === < 运算符（4 组合）===
    // smaller < larger = true
    if (zero < nine != true) { throw new Error("FAIL: '0' < '9' should be true"); }
    if (capA < capZ != true) { throw new Error("FAIL: 'A' < 'Z' should be true"); }
    // larger < smaller = false
    if (nine < zero != false) { throw new Error("FAIL: '9' < '0' should be false"); }
    if (capZ < capA != false) { throw new Error("FAIL: 'Z' < 'A' should be false"); }

    // === <= 运算符（4 组合）===
    if (zero <= nine != true) { throw new Error("FAIL: '0' <= '9' should be true"); }
    if (zero <= zero != true) { throw new Error("FAIL: '0' <= '0' should be true"); }
    if (nine <= zero != false) { throw new Error("FAIL: '9' <= '0' should be false"); }
    if (nine <= nine != true) { throw new Error("FAIL: '9' <= '9' should be true"); }

    // === >= 运算符（4 组合）===
    if (nine >= zero != true) { throw new Error("FAIL: '9' >= '0' should be true"); }
    if (nine >= nine != true) { throw new Error("FAIL: '9' >= '9' should be true"); }
    if (zero >= nine != false) { throw new Error("FAIL: '0' >= '9' should be false"); }
    if (zero >= zero != true) { throw new Error("FAIL: '0' >= '0' should be true"); }

    // === > 运算符（4 组合）===
    if (nine > zero != true) { throw new Error("FAIL: '9' > '0' should be true"); }
    if (zero > nine != false) { throw new Error("FAIL: '0' > '9' should be false"); }
    if (capZ > capA != true) { throw new Error("FAIL: 'Z' > 'A' should be true"); }
    if (capA > capZ != false) { throw new Error("FAIL: 'A' > 'Z' should be false"); }

    console.log("verified");
}
