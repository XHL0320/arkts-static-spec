/**
 * @id ITF_10_02_100_FAIL_EXTENDS_INACCESSIBLE
 * @expect compile-fail
 * @section 10.2
 * @design extends私有接口应报错
 * @note spec: interface type not accessible → CTE
 */
private interface I100 {}
interface J100 extends I100 {}
