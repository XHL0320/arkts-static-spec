/**
 * @id STM_08_02_003_PASS_function_call
 * @expect compile-pass
 * @section 8.2
 * @design 测试函数调用表达式作为语句，包括无参函数、带参函数和方法调用
 * @note 函数调用作为表达式语句应编译通过，返回值被丢弃
 */
let globalCounter: int = 0;

function incrementGlobal(): void {
    globalCounter++;
}

function addAndSet(a: int, b: int): void {
    globalCounter = a + b;
}

function testVoidFunctionCall(): void {
    incrementGlobal();
}

function testFunctionWithArgs(): void {
    addAndSet(3, 7);
}

function testMethodCallOnObject(): void {
    let arr: int[] = [1, 2, 3];
    arr.push(4);
    arr.shift();
}

function testBuiltinMethodCall(): void {
    let msg: string = "hello";
    msg.length;
    msg.charCodeAt(0);
}
