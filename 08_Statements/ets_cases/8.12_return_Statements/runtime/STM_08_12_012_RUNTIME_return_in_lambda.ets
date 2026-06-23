/**
 * @id STM_08_12_012_RUNTIME_return_in_lambda
 * @expect runtime
 * @section 8.12
 * @design 运行时验证lambda表达式中return语句正确返回计算结果
 * @note 运行时测试：验证lambda return值正确，覆盖算术运算和字符串操作
 */

function main(): void {
    let multiply: (a: int, b: int) => int = (a: int, b: int): int => {
        return a * b;
    };

    let r1: int = multiply(6, 7);
    if (r1 != 42) {
        throw new Error("multiply(6,7) should be 42, got " + r1);
    }

    let greet: (name: string) => string = (name: string): string => {
        return "Hi " + name + "!";
    };

    let r2: string = greet("ArkTS");
    if (r2 != "Hi ArkTS!") {
        throw new Error("greet('ArkTS') should be 'Hi ArkTS!', got " + r2);
    }

    console.log("verified");
}
