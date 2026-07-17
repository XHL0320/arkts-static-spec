/**
 * @id EXP2_17_09_2_019_FAIL_MULTI_INTERFACE_OVERLOAD
 * @expect compile-fail
 * @section 17.9.2
 * @design MULTI_INTERFACE_OVERLOAD
 * @note spec: missing CTE check
 */
interface IA { foo(x: int): void; overload foo {foo} }
interface IB { foo(x: string): void; overload foo {foo} }
class C019 implements IA, IB {}
