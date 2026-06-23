/**
 * @id STM_08_03_007_FAIL_local_class_in_block
 * @expect compile-fail
 * @section 8.3
 * @design 块内声明局部类应编译失败（ArkTS 不允许块级类声明）
 * @note 反向用例：块中 class 声明，违反 ArkTS 限制
 */
function testLocalClassInBlockFail(): void {
    let x: int = 0;
    {
        class LocalPoint {
            x: int = 0;
            y: int = 0;
        }
        let p: LocalPoint = new LocalPoint();
        x = p.x;
    }
}
