/**
 * @id CLS_09_03_1_018_FAIL_GETTER_ONLY_SET
 * @expect compile-fail
 * @section 9.3.1
 * @design 接口只读属性通过接口引用赋值应报错
 * @note spec: setter access on getter-only interface property → CTE
 */
interface I018 { get n(): int }
class C018 implements I018 { get n(): int { return 1 } }
function test(): void { let x: I018 = new C018(); x.n = 5 }
