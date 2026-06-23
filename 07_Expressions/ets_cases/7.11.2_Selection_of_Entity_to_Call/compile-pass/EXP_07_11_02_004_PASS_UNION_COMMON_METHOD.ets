/**
 * @id EXP_07_11_02_004_PASS_UNION_COMMON_METHOD
 * @expect compile-pass
 * @section 7.11.2
 * @design Union 表达式形式：union 类型变量调用公共实例方法，候选集合包含各类型的公共方法
 * @note 正向用例：验证 union 类型 T = A|B 时能找到 A 和 B 共有的实例方法
 */
interface HasDescription {
    describe(): string
}

class Dog implements HasDescription {
    describe(): string {
        return "Dog"
    }
    bark(): void {}
}

class Cat implements HasDescription {
    describe(): string {
        return "Cat"
    }
    meow(): void {}
}

function main(): void {
    let a: HasDescription = new Dog()
    let b: HasDescription = new Cat()
    let desc: string = a.describe()
}
