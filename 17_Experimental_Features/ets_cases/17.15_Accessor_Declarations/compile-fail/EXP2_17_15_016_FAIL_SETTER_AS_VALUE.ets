/**
 * @id EXP2_17_15_016_FAIL_SETTER_AS_VALUE
 * @expect compile-fail
 * @section 17.15
 * @design SETTER_AS_VALUE
 * @note spec: missing CTE check
 */
class C016 {
    private _val: int = 0
    set val(v: int) { this._val = v }
}
function test(): void { let c = new C016(); let x: int = c.val }

