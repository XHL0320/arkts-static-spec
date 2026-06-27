/*
 * @id NSM_13_08_001_PASS_TOP_LEVEL_STATEMENTS
 * @expect compile-pass
 * @section 13.8
 * @design Module can contain sequences of top-level statements
 */

console.log("Start of top-level statements")

type A = number | string

let a: A = 56

function foo(): void {
    console.log(a.toString())
}

a = "a string"
