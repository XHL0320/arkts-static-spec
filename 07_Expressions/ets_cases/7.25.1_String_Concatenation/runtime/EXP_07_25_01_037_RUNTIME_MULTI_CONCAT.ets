/**
 * @id EXP_07_25_01_037_RUNTIME_MULTI_CONCAT
 * @expect runtime
 * @section 7.25.1
 * @design 验证多字符串连续拼接结果正确且字符串按顺序拼接
 * @note 运行时用例：多个字符串连续拼接结果 = LHS+...+RHS
 */
function main(): void {
    let r1: string = "A" + "B" + "C" + "D";
    if (r1 != "ABCD") {
        throw new Error("assert 'A'+'B'+'C'+'D' failed: " + r1);
    }
    let a: string = "Hello";
    let b: string = " ";
    let c: string = "World";
    let r2: string = a + b + c;
    if (r2 != "Hello World") {
        throw new Error("assert a+b+c failed: " + r2);
    }
    console.log("verified");
}
