/**
 * @id EXP_07_18_008_PASS_TYPEOF_UNION
 * @expect compile-pass
 * @section 7.18
 * @design 验证 typeof union 类型编译通过
 * @note 正向用例：typeof p (A|B union) 编译通过，值运行时确定
 */
class A { a: int = 0 }
class B { b: int = 0 }

function testUnion(p: A | B): void {
    let t: string = typeof p
}
