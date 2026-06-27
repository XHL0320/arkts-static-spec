/*
 * @id NSM_13_03_012_FAIL_NAMESPACE_STATIC_BLOCK_DUPLICATE
 * @expect compile-fail
 * @section 13.3
 * @design Only one static block is allowed in a namespace.
 *                   Otherwise a compile-time error occurs.
 */

namespace NS {
    static {
        console.log("First static block")
    }
    static {
        console.log("Second static block") // Compile-time error: duplicate static block
    }
}
