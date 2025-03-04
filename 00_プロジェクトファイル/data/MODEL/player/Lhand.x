xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 79;
 0.08348;0.03381;-0.34823;,
 0.32510;-0.78844;-1.14473;,
 0.25093;-1.12410;-0.33652;,
 0.08348;0.03381;-0.34823;,
 0.39091;0.02186;-1.47705;,
 0.08348;0.03381;-0.34823;,
 0.40982;0.83216;-1.13881;,
 0.08348;0.03381;-0.34823;,
 0.37077;1.16781;-0.32814;,
 0.08348;0.03381;-0.34823;,
 0.29662;0.83216;0.48008;,
 0.08348;0.03381;-0.34823;,
 0.23082;0.02186;0.81240;,
 0.08348;0.03381;-0.34823;,
 0.21190;-0.78844;0.47415;,
 0.08348;0.03381;-0.34823;,
 0.25093;-1.12410;-0.33652;,
 0.98470;-1.50941;-1.78817;,
 0.84769;-2.12960;-0.29479;,
 1.10631;-0.01216;-2.40222;,
 1.14126;1.48510;-1.77723;,
 1.06911;2.10527;-0.27930;,
 0.93208;1.48510;1.21408;,
 0.81050;-0.01216;1.82813;,
 0.77553;-1.50941;1.20313;,
 0.84769;-2.12960;-0.29479;,
 1.96190;-2.01931;-2.18059;,
 1.78290;-2.82962;-0.22939;,
 2.12079;-0.06308;-2.98288;,
 2.16646;1.89319;-2.16629;,
 2.07215;2.70347;-0.20916;,
 1.89316;1.89319;1.74204;,
 1.73429;-0.06308;2.54433;,
 1.68860;-2.01931;1.72774;,
 1.78290;-2.82962;-0.22939;,
 3.10789;-2.24057;-2.26225;,
 2.91411;-3.11765;-0.15029;,
 3.27986;-0.12313;-3.13065;,
 3.32928;1.99430;-2.24677;,
 3.22723;2.87137;-0.12839;,
 3.03347;1.99430;1.98357;,
 2.86151;-0.12313;2.85197;,
 2.81207;-2.24057;1.96809;,
 2.91411;-3.11765;-0.15029;,
 4.24819;-2.13943;-2.02072;,
 4.06921;-2.94974;-0.06952;,
 4.40708;-0.18317;-2.82301;,
 4.45275;1.77306;-2.00642;,
 4.35846;2.58336;-0.04929;,
 4.17945;1.77306;1.90191;,
 4.02058;-0.18317;2.70420;,
 3.97490;-2.13943;1.88761;,
 4.06921;-2.94974;-0.06952;,
 5.20925;-1.73134;-1.49276;,
 5.07225;-2.35153;0.00062;,
 5.33086;-0.23409;-2.10681;,
 5.36582;1.26312;-1.48182;,
 5.29365;1.88332;0.01610;,
 5.15664;1.26312;1.50949;,
 5.03504;-0.23409;2.12354;,
 5.00008;-1.73134;1.49854;,
 5.07225;-2.35153;0.00062;,
 5.84474;-1.07843;-0.75876;,
 5.77058;-1.41406;0.04946;,
 5.91054;-0.26812;-1.09108;,
 5.92947;0.54217;-0.75283;,
 5.89041;0.87783;0.05783;,
 5.81626;0.54217;0.86605;,
 5.75045;-0.26812;1.19837;,
 5.73154;-1.07843;0.86013;,
 5.77058;-1.41406;0.04946;,
 6.05789;-0.28007;0.06955;,
 6.05789;-0.28007;0.06955;,
 6.05789;-0.28007;0.06955;,
 6.05789;-0.28007;0.06955;,
 6.05789;-0.28007;0.06955;,
 6.05789;-0.28007;0.06955;,
 6.05789;-0.28007;0.06955;,
 6.05789;-0.28007;0.06955;;
 
 64;
 3;0,1,2;,
 3;3,4,1;,
 3;5,6,4;,
 3;7,8,6;,
 3;9,10,8;,
 3;11,12,10;,
 3;13,14,12;,
 3;15,16,14;,
 4;2,1,17,18;,
 4;1,4,19,17;,
 4;4,6,20,19;,
 4;6,8,21,20;,
 4;8,10,22,21;,
 4;10,12,23,22;,
 4;12,14,24,23;,
 4;14,16,25,24;,
 4;18,17,26,27;,
 4;17,19,28,26;,
 4;19,20,29,28;,
 4;20,21,30,29;,
 4;21,22,31,30;,
 4;22,23,32,31;,
 4;23,24,33,32;,
 4;24,25,34,33;,
 4;27,26,35,36;,
 4;26,28,37,35;,
 4;28,29,38,37;,
 4;29,30,39,38;,
 4;30,31,40,39;,
 4;31,32,41,40;,
 4;32,33,42,41;,
 4;33,34,43,42;,
 4;36,35,44,45;,
 4;35,37,46,44;,
 4;37,38,47,46;,
 4;38,39,48,47;,
 4;39,40,49,48;,
 4;40,41,50,49;,
 4;41,42,51,50;,
 4;42,43,52,51;,
 4;45,44,53,54;,
 4;44,46,55,53;,
 4;46,47,56,55;,
 4;47,48,57,56;,
 4;48,49,58,57;,
 4;49,50,59,58;,
 4;50,51,60,59;,
 4;51,52,61,60;,
 4;54,53,62,63;,
 4;53,55,64,62;,
 4;55,56,65,64;,
 4;56,57,66,65;,
 4;57,58,67,66;,
 4;58,59,68,67;,
 4;59,60,69,68;,
 4;60,61,70,69;,
 3;63,62,71;,
 3;62,64,72;,
 3;64,65,73;,
 3;65,66,74;,
 3;66,67,75;,
 3;67,68,76;,
 3;68,69,77;,
 3;69,70,78;;
 
 MeshMaterialList {
  3;
  64;
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2;;
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.339200;0.037600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  58;
  -0.996197;0.052339;-0.069659;,
  -0.941096;-0.331675;-0.065808;,
  -0.916496;-0.220356;-0.333884;,
  -0.894670;0.048394;-0.444098;,
  -0.888397;0.317155;-0.331909;,
  -0.901350;0.428481;-0.063028;,
  -0.925944;0.317153;0.205038;,
  -0.947770;0.048394;0.315262;,
  -0.954045;-0.220354;0.203083;,
  -0.743336;-0.666896;-0.051980;,
  -0.697780;-0.460693;-0.548512;,
  -0.657354;0.037117;-0.752667;,
  -0.645733;0.534930;-0.544866;,
  -0.669726;0.741130;-0.046832;,
  -0.715282;0.534928;0.449693;,
  -0.755710;0.037117;0.653854;,
  -0.767331;-0.460690;0.446059;,
  -0.431284;-0.901712;-0.030159;,
  -0.371633;-0.631712;-0.680315;,
  -0.318692;0.020124;-0.947645;,
  -0.303474;0.671966;-0.675548;,
  -0.334890;0.941966;-0.023417;,
  -0.394539;0.671966;0.626738;,
  -0.447478;0.020125;0.894069;,
  -0.462700;-0.631712;0.621972;,
  -0.052213;-0.998629;-0.003652;,
  0.012407;-0.706136;-0.707967;,
  0.069756;0.000000;-0.997564;,
  0.086242;0.706139;-0.702801;,
  0.052212;0.998629;0.003652;,
  -0.012406;0.706139;0.707965;,
  -0.069755;0.000001;0.997564;,
  -0.086243;-0.706136;0.702804;,
  0.334904;-0.941961;0.023418;,
  0.394547;-0.671962;-0.626738;,
  0.447482;-0.020126;-0.894066;,
  0.462700;0.631713;-0.621970;,
  0.431288;0.901710;0.030159;,
  0.371638;0.631712;0.680312;,
  0.318699;-0.020124;0.947642;,
  0.303484;-0.671961;0.675548;,
  0.669724;-0.741132;0.046831;,
  0.715276;-0.534932;-0.449697;,
  0.755708;-0.037120;-0.653856;,
  0.767331;0.460693;-0.446056;,
  0.743338;0.666894;0.051980;,
  0.697783;0.460694;0.548506;,
  0.657354;-0.037117;0.752668;,
  0.645729;-0.534932;0.544869;,
  0.901342;-0.428498;0.063027;,
  0.925939;-0.317166;-0.205043;,
  0.947766;-0.048399;-0.315272;,
  0.954043;0.220365;-0.203080;,
  0.941088;0.331697;0.065810;,
  0.916493;0.220370;0.333883;,
  0.894665;-0.048394;0.444108;,
  0.888391;-0.317166;0.331913;,
  0.996197;-0.052338;0.069661;;
  64;
  3;0,2,1;,
  3;0,3,2;,
  3;0,4,3;,
  3;0,5,4;,
  3;0,6,5;,
  3;0,7,6;,
  3;0,8,7;,
  3;0,1,8;,
  4;1,2,10,9;,
  4;2,3,11,10;,
  4;3,4,12,11;,
  4;4,5,13,12;,
  4;5,6,14,13;,
  4;6,7,15,14;,
  4;7,8,16,15;,
  4;8,1,9,16;,
  4;9,10,18,17;,
  4;10,11,19,18;,
  4;11,12,20,19;,
  4;12,13,21,20;,
  4;13,14,22,21;,
  4;14,15,23,22;,
  4;15,16,24,23;,
  4;16,9,17,24;,
  4;17,18,26,25;,
  4;18,19,27,26;,
  4;19,20,28,27;,
  4;20,21,29,28;,
  4;21,22,30,29;,
  4;22,23,31,30;,
  4;23,24,32,31;,
  4;24,17,25,32;,
  4;25,26,34,33;,
  4;26,27,35,34;,
  4;27,28,36,35;,
  4;28,29,37,36;,
  4;29,30,38,37;,
  4;30,31,39,38;,
  4;31,32,40,39;,
  4;32,25,33,40;,
  4;33,34,42,41;,
  4;34,35,43,42;,
  4;35,36,44,43;,
  4;36,37,45,44;,
  4;37,38,46,45;,
  4;38,39,47,46;,
  4;39,40,48,47;,
  4;40,33,41,48;,
  4;41,42,50,49;,
  4;42,43,51,50;,
  4;43,44,52,51;,
  4;44,45,53,52;,
  4;45,46,54,53;,
  4;46,47,55,54;,
  4;47,48,56,55;,
  4;48,41,49,56;,
  3;49,50,57;,
  3;50,51,57;,
  3;51,52,57;,
  3;52,53,57;,
  3;53,54,57;,
  3;54,55,57;,
  3;55,56,57;,
  3;56,49,57;;
 }
 MeshTextureCoords {
  79;
  0.062500;0.000000;,
  0.125000;0.125000;,
  0.000000;0.125000;,
  0.187500;0.000000;,
  0.250000;0.125000;,
  0.312500;0.000000;,
  0.375000;0.125000;,
  0.437500;0.000000;,
  0.500000;0.125000;,
  0.562500;0.000000;,
  0.625000;0.125000;,
  0.687500;0.000000;,
  0.750000;0.125000;,
  0.812500;0.000000;,
  0.875000;0.125000;,
  0.937500;0.000000;,
  1.000000;0.125000;,
  0.125000;0.250000;,
  0.000000;0.250000;,
  0.250000;0.250000;,
  0.375000;0.250000;,
  0.500000;0.250000;,
  0.625000;0.250000;,
  0.750000;0.250000;,
  0.875000;0.250000;,
  1.000000;0.250000;,
  0.125000;0.375000;,
  0.000000;0.375000;,
  0.250000;0.375000;,
  0.375000;0.375000;,
  0.500000;0.375000;,
  0.625000;0.375000;,
  0.750000;0.375000;,
  0.875000;0.375000;,
  1.000000;0.375000;,
  0.125000;0.500000;,
  0.000000;0.500000;,
  0.250000;0.500000;,
  0.375000;0.500000;,
  0.500000;0.500000;,
  0.625000;0.500000;,
  0.750000;0.500000;,
  0.875000;0.500000;,
  1.000000;0.500000;,
  0.125000;0.625000;,
  0.000000;0.625000;,
  0.250000;0.625000;,
  0.375000;0.625000;,
  0.500000;0.625000;,
  0.625000;0.625000;,
  0.750000;0.625000;,
  0.875000;0.625000;,
  1.000000;0.625000;,
  0.125000;0.750000;,
  0.000000;0.750000;,
  0.250000;0.750000;,
  0.375000;0.750000;,
  0.500000;0.750000;,
  0.625000;0.750000;,
  0.750000;0.750000;,
  0.875000;0.750000;,
  1.000000;0.750000;,
  0.125000;0.875000;,
  0.000000;0.875000;,
  0.250000;0.875000;,
  0.375000;0.875000;,
  0.500000;0.875000;,
  0.625000;0.875000;,
  0.750000;0.875000;,
  0.875000;0.875000;,
  1.000000;0.875000;,
  0.062500;1.000000;,
  0.187500;1.000000;,
  0.312500;1.000000;,
  0.437500;1.000000;,
  0.562500;1.000000;,
  0.687500;1.000000;,
  0.812500;1.000000;,
  0.937500;1.000000;;
 }
}
