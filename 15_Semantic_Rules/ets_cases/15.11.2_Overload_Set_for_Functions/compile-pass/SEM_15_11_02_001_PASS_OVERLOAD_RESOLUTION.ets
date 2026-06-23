/**
 * @id SEM_15_11_02_001_PASS_OVERLOAD_RESOLUTION
 * @expect compile-pass
 * @section 15.11
 * @design 验证重载解析：按参数类型选择最匹配的重载
 * @note 正向用例：range(int) 和 range(int, int) 根据参数数量解析
 */
function range(n: int): int[] { let r: int[] = []; for (let i: int = 0; i < n; i++) r[i] = i; return r; }
function range(s: int, e: int): int[] { let r: int[] = []; for (let i: int = s; i < e; i++) r[r.length] = i; return r; }
function main(): void {
    let a: int[] = range(5);
    let b: int[] = range(2, 5);
    console.log(`${a[0]} ${b[0]}`);
}
