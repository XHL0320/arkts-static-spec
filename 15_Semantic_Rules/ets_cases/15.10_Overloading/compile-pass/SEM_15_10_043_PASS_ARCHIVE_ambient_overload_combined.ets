/*
 * @id SEM_15_10_043_PASS_ARCHIVE_ambient_overload_combined
 * @expect compile-pass
 * @section 15.10
 * @design Archive import: ambient overload declarations are accepted and form callable overload sets in ambient type checking.
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_011_ambient_overload_combined.ets
 */

export declare function overloadPass011String(p: string): string
export declare function overloadPass011Int(p: int): int
export declare overload overloadPass011Value { overloadPass011String, overloadPass011Int }

export declare class OverloadPass011Class {
  readString(p: string): string
  readInt(p: int): int
  overload read { readString, readInt }
}

