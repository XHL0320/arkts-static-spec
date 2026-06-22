/**
 * @id SEM_15_01_008
 * @expect compile-pass
 * @section 15.1.3
 * @design 验证有显式类型注解的变量初始化与赋值上下文规则一致
 * @note 正向用例：int/double/string 显式类型注解初始化应通过
 */
function main(): void {
    let x: int = 100;
    let y: double = 3.14;
    let z: string = "hello";
    console.log(`x=${x}, y=${y}, z=${z}`);
}
