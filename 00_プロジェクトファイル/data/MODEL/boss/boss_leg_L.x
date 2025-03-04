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
 26;
 0.00000;0.00000;0.00000;,
 0.00000;-0.78644;-3.96480;,
 -3.06688;-0.78644;-2.80354;,
 -4.33722;-0.78644;0.00000;,
 -3.06688;-0.78644;2.80354;,
 0.00000;-0.78644;3.96480;,
 3.06687;-0.78644;2.80354;,
 4.33722;-0.78644;-0.00000;,
 3.06687;-0.78644;-2.80354;,
 0.00000;-7.48003;-5.60708;,
 -4.33722;-7.48003;-3.96480;,
 -6.13375;-7.48003;0.00000;,
 -4.33722;-7.48003;3.96480;,
 0.00000;-7.48003;5.60708;,
 4.33722;-7.48003;3.96480;,
 6.13375;-7.48003;-0.00000;,
 4.33722;-7.48003;-3.96480;,
 0.00000;-14.17361;-3.96480;,
 -3.06688;-14.17361;-2.80354;,
 -4.33722;-14.17361;0.00000;,
 -3.06688;-14.17361;2.80354;,
 0.00000;-14.17361;3.96480;,
 3.06687;-14.17361;2.80354;,
 4.33722;-14.17361;-0.00000;,
 3.06687;-14.17361;-2.80354;,
 0.00000;-15.39786;-0.00000;;
 
 32;
 3;0,1,2;,
 3;0,2,3;,
 3;0,3,4;,
 3;0,4,5;,
 3;0,5,6;,
 3;0,6,7;,
 3;0,7,8;,
 3;0,8,1;,
 4;1,9,10,2;,
 4;2,10,11,3;,
 4;3,11,12,4;,
 4;4,12,13,5;,
 4;5,13,14,6;,
 4;6,14,15,7;,
 4;7,15,16,8;,
 4;8,16,9,1;,
 4;9,17,18,10;,
 4;10,18,19,11;,
 4;11,19,20,12;,
 4;12,20,21,13;,
 4;13,21,22,14;,
 4;14,22,23,15;,
 4;15,23,24,16;,
 4;16,24,17,9;,
 3;17,25,18;,
 3;18,25,19;,
 3;19,25,20;,
 3;20,25,21;,
 3;21,25,22;,
 3;22,25,23;,
 3;23,25,24;,
 3;24,25,17;;
 
 MeshMaterialList {
  5;
  32;
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4;;
  Material {
   0.800000;0.530400;0.395200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.298400;0.000000;0.006400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.367200;0.228800;0.060000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  36;
  0.000000;1.000000;0.000000;,
  0.000000;0.980890;-0.194565;,
  -0.126028;0.982421;-0.137719;,
  -0.178414;0.983955;0.000000;,
  -0.126028;0.982421;0.137719;,
  0.000000;0.980890;0.194565;,
  0.126028;0.982421;0.137720;,
  0.178414;0.983956;0.000000;,
  0.126028;0.982421;-0.137720;,
  0.000000;-0.000000;-1.000000;,
  -0.683803;-0.000000;-0.729667;,
  -1.000000;-0.000000;0.000000;,
  -0.683803;-0.000000;0.729667;,
  0.000000;-0.000000;1.000000;,
  0.683802;-0.000000;0.729667;,
  1.000000;-0.000000;-0.000000;,
  0.683802;-0.000000;-0.729667;,
  0.000000;-0.697677;-0.716413;,
  -0.481754;-0.707679;-0.516821;,
  -0.695491;-0.718534;0.000000;,
  -0.531461;-0.559099;0.636363;,
  0.000000;-0.697677;0.716413;,
  0.481754;-0.707679;0.516821;,
  0.695491;-0.718535;-0.000000;,
  0.531461;-0.559099;-0.636363;,
  0.000000;-1.000000;-0.000000;,
  0.000000;0.238283;-0.971196;,
  -0.662382;0.248334;-0.706810;,
  -0.965818;0.259221;0.000000;,
  -0.662382;0.248334;0.706810;,
  0.000000;0.238283;0.971196;,
  0.662382;0.248334;0.706810;,
  0.965818;0.259222;0.000000;,
  0.662382;0.248334;-0.706810;,
  -0.269617;-0.955187;0.122169;,
  0.269617;-0.955187;-0.122170;;
  32;
  3;0,1,2;,
  3;0,2,3;,
  3;0,3,4;,
  3;0,4,5;,
  3;0,5,6;,
  3;0,6,7;,
  3;0,7,8;,
  3;0,8,1;,
  4;26,9,10,27;,
  4;27,10,11,28;,
  4;28,11,12,29;,
  4;29,12,13,30;,
  4;30,13,14,31;,
  4;31,14,15,32;,
  4;32,15,16,33;,
  4;33,16,9,26;,
  4;9,17,18,10;,
  4;10,18,19,11;,
  4;11,19,20,12;,
  4;12,20,21,13;,
  4;13,21,22,14;,
  4;14,22,23,15;,
  4;15,23,24,16;,
  4;16,24,17,9;,
  3;17,25,18;,
  3;18,25,19;,
  3;19,25,34;,
  3;20,25,21;,
  3;21,25,22;,
  3;22,25,23;,
  3;23,25,35;,
  3;24,25,17;;
 }
}
