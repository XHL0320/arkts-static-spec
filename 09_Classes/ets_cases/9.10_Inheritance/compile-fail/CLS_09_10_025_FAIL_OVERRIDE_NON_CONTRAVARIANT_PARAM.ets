/**
 * @id CLS_09_10_025_FAIL_OVERRIDE_NON_CONTRAVARIANT_PARAM
 * @expect compile-fail
 * @section 9.10
 */
class Base25 { foo(x: string): void {} }
class Bad25 extends Base25 { override foo(x: int): void {} }
