/*
 * @id NSM_13_04_6_002_FAIL_SEVERAL_BINDINGS_NAME_CONFLICT
 * @expect compile-fail
 * @section 13.4.6
 * @design Entity added to the scope by a binding must be distinguishable
 *                   — same name imported twice without alias causes conflict
 */

import { sin } from "@ohos.math"
import { sin } from "@ohos.math"
// Compile-time error: 'sin' already bound in declaration scope (or warning)
