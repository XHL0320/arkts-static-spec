/*
 * @id NSM_13_03_013_RUNTIME_NAMESPACE_INITIALIZER
 * @expect runtime
 * @section 13.3
 * @design Namespace initializer executed only if at least one exported
 *                   namespace member is used in the program
 */

namespace NS1 {
    export let variable: int = 1234
    export const constant: int = 5678
    export let someVar: string

    // Will be executed before any use of NS1 members
    someVar = "some string"
}

namespace NS2 {
    export const constant: int = 1
    // Will never be executed since NS2 members are never used
    console.log("Init for NS2 done")
}

function main(): int {
    if (NS1.variable == NS1.constant) {
        NS1.variable = 4321
    }
    console.log(NS1.someVar)
    return NS1.someVar == "some string" ? 0 : 1
}
