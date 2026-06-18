/**
 * @id STM_08_04_018_PASS_let_union_type
 * @expect compile-pass
 * @section 8.4
 * @design 测试let带复杂联合类型注解的声明
 * @note let支持联合类型注解：string|number, int|null, string|int|boolean等复杂联合类型
 */
function testLetUnionType(): void {
    let a: string | number = "hello";
    let b: string | number = 42;
    let c: int | null = 100;
    let d: int | null = null;
    let e: string | int | boolean = "multi";
    let f: string | int | boolean = 0;
    let g: string | int | boolean = true;
    let h: number | string[] = 3.14;
    let i: number | string[] = ["a", "b"];
    let j: boolean | null = false;
    let k: boolean | null = null;
}
