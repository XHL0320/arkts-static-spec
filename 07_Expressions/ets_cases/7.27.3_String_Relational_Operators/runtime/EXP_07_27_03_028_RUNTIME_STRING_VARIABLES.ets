/**
 * @id EXP_07_27_03_028_RUNTIME_STRING_VARIABLES
 * @expect runtime
 * @section 7.27.3
 * @design 验证字符串变量和常量比较的运行时行为
 * @note 运行时用例：const和let声明的字符串变量比较，以及字面量和变量混合
 */
function main(): void {
    const greeting: string = "Hello";
    const subject: string = "World";
    let a: string = "alpha";
    let b: string = "beta";
    let c: string = "alpha";

    // const 比较
    if (greeting < subject != true) {
        throw new Error("assertion failed: \"Hello\" < \"World\"");
    }
    if (greeting > greeting != false) {
        throw new Error("assertion failed: greeting > greeting");
    }

    // 变量比较："alpha" < "beta"
    if (a < b != true) {
        throw new Error("assertion failed: \"alpha\" < \"beta\"");
    }
    if (a > b != false) {
        throw new Error("assertion failed: \"alpha\" > \"beta\"");
    }
    if (a <= b != true) {
        throw new Error("assertion failed: \"alpha\" <= \"beta\"");
    }
    if (a >= b != false) {
        throw new Error("assertion failed: \"alpha\" >= \"beta\"");
    }

    // 相同内容的变量
    if (a < c != false) {
        throw new Error("assertion failed: a < c (both \"alpha\")");
    }
    if (a <= c != true) {
        throw new Error("assertion failed: a <= c (both \"alpha\")");
    }
    if (a > c != false) {
        throw new Error("assertion failed: a > c (both \"alpha\")");
    }
    if (a >= c != true) {
        throw new Error("assertion failed: a >= c (both \"alpha\")");
    }

    // 字面量与变量混合
    if (a < "beta" != true) {
        throw new Error("assertion failed: a < \"beta\"");
    }
    if ("beta" > a != true) {
        throw new Error("assertion failed: \"beta\" > a");
    }
    if (a >= "alpha" != true) {
        throw new Error("assertion failed: a >= \"alpha\"");
    }

    console.log("verified");
}
