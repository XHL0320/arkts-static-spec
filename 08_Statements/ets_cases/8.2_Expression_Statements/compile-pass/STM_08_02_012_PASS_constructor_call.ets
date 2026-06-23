/**
 * @id STM_08_02_012_PASS_constructor_call
 * @expect compile-pass
 * @section 8.2
 * @design 测试构造函数调用(new)作为表达式语句，返回值被丢弃
 * @note new表达式作为语句应编译通过，构造的实例及其副作用保留但返回值被丢弃
 */
let ctorCallCount: int = 0;

class Counter {
    constructor() {
        ctorCallCount++;
    }
}

class Accumulator {
    value: int;
    constructor(init: int) {
        this.value = init;
        ctorCallCount++;
    }
}

class EmptyClass {
    constructor() {
    }
}

function testConstructorCallStatement(): void {
    new Counter();
    new Accumulator(42);
    new EmptyClass();
}

function testConstructorCallWithExpressionArg(): void {
    new Accumulator(10 + 20);
    let base: int = 5;
    new Accumulator(base * 3);
}

function testMultipleConstructorCalls(): void {
    new Counter();
    new Counter();
    new Accumulator(1);
    new Accumulator(2);
    new EmptyClass();
}
