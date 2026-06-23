/**
 * @id STM_08_12_009_RUNTIME_return_value
 * @expect runtime
 * @section 8.12
 * @design 运行时验证return语句正确返回值
 * @note 运行时测试：验证函数返回值与期望值一致，覆盖int和string类型
 */
function add(a: int, b: int): int {
    return a + b;
}

function getGreeting(name: string): string {
    return "Hello, " + name;
}

function main(): void {
    let sum: int = add(3, 4);
    if (sum != 7) {
        throw new Error("add(3,4) should be 7, got " + sum);
    }

    let msg: string = getGreeting("World");
    if (msg != "Hello, World") {
        throw new Error("getGreeting('World') should be 'Hello, World', got " + msg);
    }

    console.log("verified");
}
