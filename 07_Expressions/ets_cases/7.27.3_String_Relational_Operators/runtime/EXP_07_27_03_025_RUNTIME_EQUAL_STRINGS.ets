/**
 * @id EXP_07_27_03_025_RUNTIME_EQUAL_STRINGS
 * @expect runtime
 * @section 7.27.3
 * @design 验证相同字符串的关系运算符运行时行为
 * @note 运行时用例：相同字符串的<和>返回false，<=和>=返回true
 */
function main(): void {
    let s: string = "abc";

    // 相同字符串：< 和 > 为 false，<= 和 >= 为 true
    if (s < s != false) {
        throw new Error("assertion failed: \"abc\" < \"abc\"");
    }
    if (s > s != false) {
        throw new Error("assertion failed: \"abc\" > \"abc\"");
    }
    if (s <= s != true) {
        throw new Error("assertion failed: \"abc\" <= \"abc\"");
    }
    if (s >= s != true) {
        throw new Error("assertion failed: \"abc\" >= \"abc\"");
    }

    // 空字符串自身相等
    let empty: string = "";
    if (empty < empty != false) {
        throw new Error("assertion failed: \"\" < \"\"");
    }
    if (empty > empty != false) {
        throw new Error("assertion failed: \"\" > \"\"");
    }
    if (empty <= empty != true) {
        throw new Error("assertion failed: \"\" <= \"\"");
    }
    if (empty >= empty != true) {
        throw new Error("assertion failed: \"\" >= \"\"");
    }

    // 不同变量相同内容
    let x: string = "xyz";
    let y: string = "xyz";
    if (x < y != false) {
        throw new Error("assertion failed: x < y (both \"xyz\")");
    }
    if (x <= y != true) {
        throw new Error("assertion failed: x <= y (both \"xyz\")");
    }
    if (x > y != false) {
        throw new Error("assertion failed: x > y (both \"xyz\")");
    }
    if (x >= y != true) {
        throw new Error("assertion failed: x >= y (both \"xyz\")");
    }

    console.log("verified");
}
