/*
 * @id NSM_13_09_003_FAIL_MULTIFILE_TOP_LEVEL_IN_SEVERAL
 * @expect compile-fail
 * @section 13.9
 * @design If top-level statements are located in different files,
 *                   then a compile-time error occurs
 */

module "y"
let a: int = 8

namespace NS1 {
    let b: int = 9
}

// In another file with module "y":
// let b = 4 // Compile-time error: top-level statements in several files
