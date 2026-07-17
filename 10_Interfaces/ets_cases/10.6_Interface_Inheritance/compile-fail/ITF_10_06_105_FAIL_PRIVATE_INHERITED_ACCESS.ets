/**
 * @id ITF_10_06_105_FAIL_PRIVATE_INHERITED_ACCESS
 * @expect compile-fail
 * @section 10.6
 * @design 超接口私有成员在子接口不可访问
 * @note spec: private methods from superinterfaces are not accessible
 */
interface I105a { private foo(): void }
interface I105b extends I105a { bar(): void }
class C105 implements I105b { bar(): void { let x = new C105(); /* can't access foo */ } }
