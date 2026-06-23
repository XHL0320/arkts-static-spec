/**
 * @id SEM_15_08_03_001
 * @expect compile-pass
 * @section 15.8.3
 * @design 差分类型自身赋值
 * @note 正向用例：string 类型变量赋值自身
 */
function main(): void {
    let x: string = "hi";
    console.log("ok");
}
