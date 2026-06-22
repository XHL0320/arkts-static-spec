/**
 * @id SEM_15_14_01_099
 * @expect compile-fail
 * @section 15.14.1
 * @design 三元表达式类型不匹配拒绝
 * @note 条件?int:string 依赖运行时值，不可直接赋值给 int
 */
function getFlag(): boolean { return true; }
function main(): void {
    let x: int = getFlag() ? 1 : "s";
}
