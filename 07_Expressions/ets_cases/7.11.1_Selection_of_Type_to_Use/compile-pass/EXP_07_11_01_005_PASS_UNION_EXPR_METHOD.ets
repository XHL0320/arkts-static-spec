/**
 * @id EXP_07_11_01_005_PASS_UNION_EXPR_METHOD
 * @expect compile-pass
 * @section 7.11.1
 * @design expression (union) 形式：union 类型表达式调用共有方法
 * @note 正向用例：验证 obj.method() 中 obj 为 union 类型时编译通过
 */
interface Named {
    getName(): string
}
class Person implements Named {
    getName(): string {
        return "Person"
    }
}
class Product implements Named {
    getName(): string {
        return "Product"
    }
}
function showName(n: Named): void {
    let name: string = n.getName()
}
let p: Named = new Person()
let pr: Named = new Product()
showName(p)
showName(pr)
