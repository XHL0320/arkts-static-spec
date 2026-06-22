/**
 * @id SEM_15_01_009
 * @expect compile-pass
 * @section 15.1.3
 * @design 验证无显式类型注解时从初始化器推断类型
 * @note 正向用例：从字面量初始化推断 int/double/string/boolean
 */
function main(): void {
    let a = 100;
    let b = 3.14;
    let c = "hello";
    let d = true;
    console.log(`a=${a}, b=${b}, c=${c}, d=${d}`);
}
