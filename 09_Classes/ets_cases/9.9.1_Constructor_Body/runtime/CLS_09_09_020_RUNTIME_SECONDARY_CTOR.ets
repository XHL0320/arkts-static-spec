/**
 * @id CLS_09_09_020_RUNTIME_SECONDARY_CTOR
 * @expect runtime
 * @section 9.9.1
 */
class Pt3D { x: int = 0; y: int = 0; z: int = 0; constructor(x: int, y: int, z: int) { this.x = x; this.y = y; this.z = z } constructor() { this(1, 2, 3) } }
function main(): void { let p: Pt3D = new Pt3D(); if (p.x != 1 || p.y != 2 || p.z != 3) { throw new Error("fail") } console.log("verified") }
