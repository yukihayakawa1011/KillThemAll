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
 66;
 -0.02261;-0.00032;-1.97891;,
 -0.02261;-1.39141;-1.37925;,
 -4.97178;-1.39141;-1.37925;,
 -4.97178;-0.00032;-1.97891;,
 -0.02261;-1.11318;-1.08972;,
 -0.02261;-0.00032;-1.56944;,
 -4.97178;-0.00032;-1.56944;,
 -4.97178;-1.11318;-1.08972;,
 -0.02261;-1.96757;0.06844;,
 -4.97178;-1.96757;0.06844;,
 -0.02261;-1.57413;0.06844;,
 -4.97178;-1.57413;0.06844;,
 -0.02261;-1.39141;1.51614;,
 -4.97178;-1.39141;1.51614;,
 -0.02261;-1.11318;1.22660;,
 -4.97178;-1.11318;1.22660;,
 -0.02261;-0.00032;2.11579;,
 -4.97178;-0.00032;2.11579;,
 -0.02261;-0.00032;1.70632;,
 -4.97178;-0.00032;1.70632;,
 -0.02261;1.39077;1.51614;,
 -4.97178;1.39077;1.51614;,
 -0.02261;1.11256;1.22660;,
 -4.97178;1.11256;1.22660;,
 -0.02261;1.96694;0.06844;,
 -4.97178;1.96694;0.06844;,
 -0.02261;1.57349;0.06844;,
 -4.97178;1.57349;0.06844;,
 -0.02261;1.39077;-1.37925;,
 -4.97178;1.39077;-1.37925;,
 -0.02261;1.11256;-1.08972;,
 -4.97178;1.11256;-1.08972;,
 -0.02261;-0.00032;-1.97891;,
 -4.97178;-0.00032;-1.97891;,
 -0.02261;-0.00032;-1.56944;,
 -4.97178;-0.00032;-1.56944;,
 -0.02261;-1.11318;-1.08972;,
 -0.02261;-1.39141;-1.37925;,
 -4.97178;-0.00032;-1.97891;,
 -4.97178;-1.39141;-1.37925;,
 -4.97178;-1.11318;-1.08972;,
 -4.97178;-0.00032;-1.56944;,
 -0.02261;-1.57413;0.06844;,
 -0.02261;-1.96757;0.06844;,
 -4.97178;-1.96757;0.06844;,
 -4.97178;-1.57413;0.06844;,
 -0.02261;-1.11318;1.22660;,
 -0.02261;-1.39141;1.51614;,
 -4.97178;-1.39141;1.51614;,
 -4.97178;-1.11318;1.22660;,
 -0.02261;-0.00032;1.70632;,
 -0.02261;-0.00032;2.11579;,
 -4.97178;-0.00032;2.11579;,
 -4.97178;-0.00032;1.70632;,
 -0.02261;1.11256;1.22660;,
 -0.02261;1.39077;1.51614;,
 -4.97178;1.39077;1.51614;,
 -4.97178;1.11256;1.22660;,
 -0.02261;1.57349;0.06844;,
 -0.02261;1.96694;0.06844;,
 -4.97178;1.96694;0.06844;,
 -4.97178;1.57349;0.06844;,
 -0.02261;1.11256;-1.08972;,
 -0.02261;1.39077;-1.37925;,
 -4.97178;1.39077;-1.37925;,
 -4.97178;1.11256;-1.08972;;
 
 32;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;1,8,9,2;,
 4;10,4,7,11;,
 4;8,12,13,9;,
 4;14,10,11,15;,
 4;12,16,17,13;,
 4;18,14,15,19;,
 4;16,20,21,17;,
 4;22,18,19,23;,
 4;20,24,25,21;,
 4;26,22,23,27;,
 4;24,28,29,25;,
 4;30,26,27,31;,
 4;28,32,33,29;,
 4;34,30,31,35;,
 4;0,5,36,37;,
 4;38,39,40,41;,
 4;37,36,42,43;,
 4;39,44,45,40;,
 4;43,42,46,47;,
 4;44,48,49,45;,
 4;47,46,50,51;,
 4;48,52,53,49;,
 4;51,50,54,55;,
 4;52,56,57,53;,
 4;55,54,58,59;,
 4;56,60,61,57;,
 4;59,58,62,63;,
 4;60,64,65,61;,
 4;63,62,5,0;,
 4;64,38,41,65;;
 
 MeshMaterialList {
  5;
  32;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.200800;0.200800;0.200800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.661600;0.455200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.147200;0.160000;0.545600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.520800;0.599200;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.759200;0.800000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  18;
  0.000000;0.000000;-1.000000;,
  0.000000;-0.717018;-0.697055;,
  0.000000;-1.000000;-0.000001;,
  0.000000;-0.717017;0.697056;,
  0.000000;0.000000;1.000000;,
  0.000000;0.717015;0.697058;,
  0.000000;1.000000;-0.000001;,
  0.000000;0.717016;-0.697057;,
  0.000000;0.000003;1.000000;,
  0.000000;0.717012;0.697060;,
  0.000000;1.000000;0.000000;,
  0.000000;0.717012;-0.697060;,
  0.000000;0.000003;-1.000000;,
  0.000000;-0.717015;-0.697057;,
  0.000000;-1.000000;-0.000000;,
  0.000000;-0.717015;0.697057;,
  1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;;
  32;
  4;0,1,1,0;,
  4;9,8,8,9;,
  4;1,2,2,1;,
  4;10,9,9,10;,
  4;2,3,3,2;,
  4;11,10,10,11;,
  4;3,4,4,3;,
  4;12,11,11,12;,
  4;4,5,5,4;,
  4;13,12,12,13;,
  4;5,6,6,5;,
  4;14,13,13,14;,
  4;6,7,7,6;,
  4;15,14,14,15;,
  4;7,0,0,7;,
  4;8,15,15,8;,
  4;16,16,16,16;,
  4;17,17,17,17;,
  4;16,16,16,16;,
  4;17,17,17,17;,
  4;16,16,16,16;,
  4;17,17,17,17;,
  4;16,16,16,16;,
  4;17,17,17,17;,
  4;16,16,16,16;,
  4;17,17,17,17;,
  4;16,16,16,16;,
  4;17,17,17,17;,
  4;16,16,16,16;,
  4;17,17,17,17;,
  4;16,16,16,16;,
  4;17,17,17,17;;
 }
 MeshTextureCoords {
  66;
  0.000000;0.000000;,
  0.125000;0.000000;,
  0.125000;1.000000;,
  0.000000;1.000000;,
  0.125000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  0.125000;1.000000;,
  0.250000;0.000000;,
  0.250000;1.000000;,
  0.250000;0.000000;,
  0.250000;1.000000;,
  0.375000;0.000000;,
  0.375000;1.000000;,
  0.375000;0.000000;,
  0.375000;1.000000;,
  0.500000;0.000000;,
  0.500000;1.000000;,
  0.500000;0.000000;,
  0.500000;1.000000;,
  0.625000;0.000000;,
  0.625000;1.000000;,
  0.625000;0.000000;,
  0.625000;1.000000;,
  0.750000;0.000000;,
  0.750000;1.000000;,
  0.750000;0.000000;,
  0.750000;1.000000;,
  0.875000;0.000000;,
  0.875000;1.000000;,
  0.875000;0.000000;,
  0.875000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;;
 }
}