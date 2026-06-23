/**
 * @id STM_08_02_013_PASS_property_access_chain
 * @expect compile-pass
 * @section 8.2
 * @design 测试属性访问和方法链式调用作为表达式语句，返回值被丢弃
 * @note 属性访问和链式方法调用作为表达式语句应编译通过
 */

class ValueHolder {
    value: int;
    constructor(v: int) {
        this.value = v;
    }
    getValue(): int {
        return this.value;
    }
    setValue(v: int): ValueHolder {
        this.value = v;
        return this;
    }
    increment(): ValueHolder {
        this.value++;
        return this;
    }
}

function testPropertyAccessStatement(): void {
    let obj: ValueHolder = new ValueHolder(10);
    obj.value;
    obj.getValue();
}

function testMethodChainStatement(): void {
    let obj: ValueHolder = new ValueHolder(1);
    obj.setValue(20).setValue(30);
    obj.increment().increment();
    obj.setValue(5).increment().setValue(100);
}

function testBuiltinPropertyAccess(): void {
    let s: string = "hello";
    s.length;
    let arr: int[] = [1, 2, 3];
    arr.length;
}

function testBuiltinMethodCallDiscard(): void {
    let s: string = "world";
    s.substring(0, 2);
    s.charCodeAt(0);
    let arr: int[] = [10, 20, 30];
    arr.pop();
    arr.indexOf(20);
}
