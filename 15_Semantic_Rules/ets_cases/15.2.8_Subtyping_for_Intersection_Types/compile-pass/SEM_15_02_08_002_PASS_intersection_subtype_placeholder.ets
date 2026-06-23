/**
 * @id SEM_15_02_08_002_PASS_intersection_subtype_placeholder
 * @expect compile-pass
 * @section 15.2.8
 * @design 交叉类型子类型—instanceof 收窄后跨类型赋值
 * @note 替代测试：instanceof 检查后类型收窄实现交叉语义
 */
interface Flyable { fly(): void; }
class Bird { name: string = ""; }
class Eagle extends Bird { fly(): void { console.log("soaring"); } }
function main(): void {
    let b: Bird = new Eagle();
    if (b instanceof Eagle) {
        let e: Eagle = b;
        e.fly();
    }
}
