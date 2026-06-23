/**
 * @id EXP_07_27_03_023_RUNTIME_CASE_SENSITIVITY
 * @expect runtime
 * @section 7.27.3
 * @design 验证字符串大小写敏感的词典序运行时行为
 * @note 运行时用例：ASCII大写字母(65-90) < 小写字母(97-122)
 */
function main(): void {
    let hello: string = "Hello";
    let helloLow: string = "hello";

    // 'H'(72) < 'h'(104)，所以 "Hello" < "hello"
    if (hello < helloLow != true) {
        throw new Error("assertion failed: \"Hello\" < \"hello\"");
    }
    if (helloLow > hello != true) {
        throw new Error("assertion failed: \"hello\" > \"Hello\"");
    }
    if (hello <= helloLow != true) {
        throw new Error("assertion failed: \"Hello\" <= \"hello\"");
    }
    if (hello >= helloLow != false) {
        throw new Error("assertion failed: \"Hello\" >= \"hello\"");
    }

    // "ABC" vs "abc": 'A'(65) < 'a'(97)
    if ("ABC" < "abc" != true) {
        throw new Error("assertion failed: \"ABC\" < \"abc\"");
    }
    if ("abc" > "ABC" != true) {
        throw new Error("assertion failed: \"abc\" > \"ABC\"");
    }

    // "apple" vs "Apple": 'a'(97) > 'A'(65)
    if ("apple" > "Apple" != true) {
        throw new Error("assertion failed: \"apple\" > \"Apple\"");
    }
    if ("Apple" < "apple" != true) {
        throw new Error("assertion failed: \"Apple\" < \"apple\"");
    }

    // "Z" vs "a": 'Z'(90) < 'a'(97)
    if ("Z" < "a" != true) {
        throw new Error("assertion failed: \"Z\" < \"a\"");
    }
    if ("a" > "Z" != true) {
        throw new Error("assertion failed: \"a\" > \"Z\"");
    }

    console.log("verified");
}
