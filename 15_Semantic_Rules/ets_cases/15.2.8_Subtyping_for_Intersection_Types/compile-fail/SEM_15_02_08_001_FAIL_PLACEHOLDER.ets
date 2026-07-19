/**
 * @id SEM_15_02_08_001_PASS_PLACEHOLDER
 * @expect compile-fail
 * @section 15.2.8
 * @design 交叉类型—instanceof 收窄实现交叉语义
 * @note 编译器暂不支持 & 语法，通过 C&I 场景验证
 */
interface Named { name: string; }
class Person { name: string = ""; age: int = 0; }
function greet(p: Person & Named): void {
    console.log(p.name);
}
function main(): void {
    let p = new Person();
    p.name = "Alice";
    if (p instanceof Person) {
        greet(p);
    }
}

