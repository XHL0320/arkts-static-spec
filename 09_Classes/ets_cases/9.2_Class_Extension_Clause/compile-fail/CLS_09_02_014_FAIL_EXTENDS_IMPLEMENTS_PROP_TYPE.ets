/**
 * @id CLS_09_02_014_FAIL_EXTENDS_IMPLEMENTS_PROP_TYPE
 * @expect compile-fail
 * @section 9.2
 * @design extends+implements属性类型不匹配应报错
 * @note spec: class extends B implements I, B.n:string != I.n:number → CTE
 */
interface I014 { n: number }
class Base014 { n: string = "" }
class C014 extends Base014 implements I014 {}
