/**
 * @id SEM_15_08_06_099
 * @expect compile-fail
 * @section 15.8.6
 * @design 类型简化拒绝：不兼容的类型赋值
 * @note 反向用例：string 不能赋值给 int
 */
function main(): void {
    let x: int = "s";
}
