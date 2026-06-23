/**
 * @id EXP_07_11_02_008_FAIL_UNION_NO_COMMON_METHOD
 * @expect compile-fail
 * @section 7.11.2
 * @design Union 类型表达式调用不存在公共方法的方法，候选集合为空导致编译时错误
 * @note 反向用例：union 类型 T = A|B 中 A 和 B 没有名为 identifier 的公共实例方法，空集合应报错
 */
class Dog {
    bark(): string {
        return "woof"
    }
}

class Cat {
    meow(): string {
        return "meow"
    }
}

function callBark(a: Dog | Cat): void {
    a.bark()
}
