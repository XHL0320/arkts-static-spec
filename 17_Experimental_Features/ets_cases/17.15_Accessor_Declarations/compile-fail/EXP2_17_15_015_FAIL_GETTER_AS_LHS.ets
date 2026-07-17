/**
 * @id EXP2_17_15_015_FAIL_GETTER_AS_LHS
 * @expect compile-fail
 * @section 17.15
 * @design GETTER_AS_LHS
 * @note spec: missing CTE check
 */
class C015 {
    private _val: int = 0
    get val(): int { return this._val }
}
function test(): void { let c = new C015(); c.val = 42 }

