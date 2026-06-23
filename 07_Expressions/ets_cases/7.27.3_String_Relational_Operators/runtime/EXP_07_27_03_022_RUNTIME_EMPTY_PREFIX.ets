/**
 * @id EXP_07_27_03_022_RUNTIME_EMPTY_PREFIX
 * @expect runtime
 * @section 7.27.3
 * @design 验证空字符串和前缀规则的词典序运行时行为
 * @note 运行时用例：空字符串最小，较短字符串小于较长前缀
 */
function main(): void {
    let empty: string = "";
    let a: string = "a";
    let ab: string = "ab";
    let abc: string = "abc";

    // 空字符串小于非空字符串
    if (empty < a != true) {
        throw new Error("assertion failed: \"\" < \"a\"");
    }
    if (empty > a != false) {
        throw new Error("assertion failed: \"\" > \"a\"");
    }
    if (empty <= a != true) {
        throw new Error("assertion failed: \"\" <= \"a\"");
    }
    if (empty >= a != false) {
        throw new Error("assertion failed: \"\" >= \"a\"");
    }

    // 空字符串等于自身
    if (empty < empty != false) {
        throw new Error("assertion failed: \"\" < \"\"");
    }
    if (empty <= empty != true) {
        throw new Error("assertion failed: \"\" <= \"\"");
    }
    if (empty > empty != false) {
        throw new Error("assertion failed: \"\" > \"\"");
    }
    if (empty >= empty != true) {
        throw new Error("assertion failed: \"\" >= \"\"");
    }

    // 前缀规则：较短字符串 < 较长（当共有前缀相同）
    if (a < ab != true) {
        throw new Error("assertion failed: \"a\" < \"ab\"");
    }
    if (ab < abc != true) {
        throw new Error("assertion failed: \"ab\" < \"abc\"");
    }
    if (abc > ab != true) {
        throw new Error("assertion failed: \"abc\" > \"ab\"");
    }
    if (ab > a != true) {
        throw new Error("assertion failed: \"ab\" > \"a\"");
    }

    console.log("verified");
}
