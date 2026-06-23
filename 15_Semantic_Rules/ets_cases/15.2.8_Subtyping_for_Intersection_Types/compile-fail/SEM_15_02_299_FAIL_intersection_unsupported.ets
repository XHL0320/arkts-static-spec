/**
 * @id SEM_15_02_299_FAIL_intersection_unsupported
 * @expect compile-fail
 * @section 15.2.8
 * @design 交叉类型暂不支持—编译器报 ESY145527
 * @note 来自规范 15.2.8 定义（I1&...&In <:T if Ii <:T for some i），编译器未实现
 */
interface Named { name: string }
interface Aged { age: int }
type Person = Named & Aged
function main(): void {
    let p: Person = { name: "Alice", age: 30 }
}
