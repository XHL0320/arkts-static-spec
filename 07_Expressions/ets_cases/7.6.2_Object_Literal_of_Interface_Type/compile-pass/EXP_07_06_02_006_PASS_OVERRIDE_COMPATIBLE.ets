/**
 * @id EXP_07_06_02_006_PASS_OVERRIDE_COMPATIBLE
 * @expect compile-pass
 * @section 7.6.2
 * @design Override-compatible 签名：foo(p: Base) 同时实现 foo(p: Drv1) 和 foo(p: Drv2)
 * @note 正向用例：验证单个更宽参数类型的方法可实现多个重载
 */
class Base {}
class Drv1 extends Base {}
class Drv2 extends Base {}

interface A {
    foo(p: Drv1): Base
    foo(p: Drv2): Base
}
const a1: A = { foo(p: Base): Drv1 { return new Drv1() } }
