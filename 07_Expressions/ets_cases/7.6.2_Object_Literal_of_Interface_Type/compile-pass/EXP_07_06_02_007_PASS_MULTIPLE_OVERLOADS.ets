/**
 * @id EXP_07_06_02_007_PASS_MULTIPLE_OVERLOADS
 * @expect compile-pass
 * @section 7.6.2
 * @design 多个重载实现：foo(p: Drv1) 和 foo(p: Drv2) 分别实现两个重载，用逗号分隔
 * @note 正向用例：验证对象字面量可为每个重载提供独立实现（成员间需逗号分隔）
 */
class Base {}
class Drv1 extends Base {}
class Drv2 extends Base {}

interface A {
    foo(p: Drv1): Base
    foo(p: Drv2): Base
}
const a2: A = {
    foo(p: Drv1): Drv1 { return new Drv1() },
    foo(p: Drv2): Drv2 { return new Drv2() }
}
