//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//
///
// Buffer Definitions: 
//
// cbuffer cbPerObject
// {
//
//   float4x4 g_mWorldViewProjection;   // Offset:    0 Size:    64
//   float4x4 g_mWorld;                 // Offset:   64 Size:    64
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// cbPerObject                       cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// NORMAL                   0   xyz         1     NONE   float   xyz 
// TEXCOORD                 0   xy          2     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// NORMAL                   0   xyz         1     NONE   float   xyz 
// TEXCOORD                 0   xy          2     NONE   float   xy  
// TEXCOORD                 1   xyzw        3     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[8], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_input v2.xy
dcl_output_siv o0.xyzw, position
dcl_output o1.xyz
dcl_output o2.xy
dcl_output o3.xyzw
dcl_temps 3
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw
add r0.xyz, v1.xyzx, v1.xyzx
ge r1.xyz, v1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
mad r2.xyz, v1.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(-2.000000, -2.000000, -2.000000, 0.000000)
movc r0.xyz, r1.xyzx, r2.xyzx, r0.xyzx
dp3 o1.x, r0.xyzx, cb0[4].xyzx
dp3 o1.y, r0.xyzx, cb0[5].xyzx
dp3 o1.z, r0.xyzx, cb0[6].xyzx
mov o2.xy, v2.xyxx
mov o3.x, cb0[4].x
mov o3.y, cb0[5].x
mov o3.z, cb0[6].x
mov o3.w, cb0[7].x
ret 
// Approximately 17 instruction slots used