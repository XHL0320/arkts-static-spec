/**
 * @id SEM_15_03_005
 * @expect compile-pass
 * @section 15.3
 * @design 验证联合类型同一性：相同成员的联合类型视为同一类型
 * @note 正向用例：string|int 和 int|string 是同一类型（成员顺序无关）
 */
function main(): void {
    let a: string|int = 42;
    let b: int|string = a;
    console.log(`b=${b}`);
}
