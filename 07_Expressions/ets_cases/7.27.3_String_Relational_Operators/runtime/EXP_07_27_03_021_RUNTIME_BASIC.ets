/**
 * @id EXP_07_27_03_021_RUNTIME_BASIC
 * @expect runtime
 * @section 7.27.3
 * @design 验证字符串四个关系运算符的基本运行时行为
 * @note 运行时用例：验证"abc"和"def"的<、<=、>、>=结果
 */
function main(): void {
    let a: string = "abc";
    let b: string = "def";

    // a < b: "abc" < "def", 'a'(97) < 'd'(100)
    if (a < b != true) {
        throw new Error("assertion failed: abc < def");
    }

    // a <= b
    if (a <= b != true) {
        throw new Error("assertion failed: abc <= def");
    }

    // a > b: false
    if (a > b != false) {
        throw new Error("assertion failed: abc > def");
    }

    // a >= b: false
    if (a >= b != false) {
        throw new Error("assertion failed: abc >= def");
    }

    // b > a
    if (b > a != true) {
        throw new Error("assertion failed: def > abc");
    }

    // b >= a
    if (b >= a != true) {
        throw new Error("assertion failed: def >= abc");
    }

    // b < a: false
    if (b < a != false) {
        throw new Error("assertion failed: def < abc");
    }

    // b <= a: false
    if (b <= a != false) {
        throw new Error("assertion failed: def <= abc");
    }

    console.log("verified");
}
