/**
 * @id SEM_15_11_9_098_FAIL_derived_call_no_match
 * @expect compile-fail
 * @section 15.11.9
 * @design 派生类调用无匹配
 * @note 反向用例
 */
class Base { m(x: int): void {} }
class Derived extends Base { m(x: string): void {} }
function main(): void { let d: Derived = new Derived(); d.m(true); }
