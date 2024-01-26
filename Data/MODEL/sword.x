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
 148;
 5.79570;-0.02977;-0.46478;,
 5.79570;0.56538;-0.46335;,
 6.53267;0.01752;-0.04542;,
 6.53267;-0.02977;-0.06084;,
 5.79570;0.55143;-0.00820;,
 6.53267;0.03711;-0.00820;,
 5.79570;0.56538;0.44694;,
 6.53267;0.01752;0.02902;,
 5.79570;-0.02977;0.45936;,
 6.53267;-0.02977;0.04444;,
 5.79570;-0.60802;0.44694;,
 6.53267;-0.07705;0.02902;,
 5.79570;-0.64488;-0.00820;,
 6.53267;-0.09664;-0.00820;,
 5.79570;-0.60802;-0.46335;,
 6.53267;-0.07705;-0.04542;,
 5.79570;-0.02977;-0.46478;,
 6.53267;-0.02977;-0.06084;,
 5.79570;-0.02977;-0.00820;,
 5.79570;-0.02977;-0.00820;,
 5.79570;-0.02977;-0.00820;,
 5.79570;-0.02977;-0.00820;,
 5.79570;-0.02977;-0.00820;,
 5.79570;-0.02977;-0.00820;,
 5.79570;-0.02977;-0.00820;,
 5.79570;-0.02977;-0.00820;,
 6.53267;-0.02977;-0.00820;,
 6.53267;-0.02977;-0.00820;,
 6.53267;-0.02977;-0.00820;,
 6.53267;-0.02977;-0.00820;,
 6.53267;-0.02977;-0.00820;,
 6.53267;-0.02977;-0.00820;,
 6.53267;-0.02977;-0.00820;,
 6.53267;-0.02977;-0.00820;,
 5.79773;-0.01989;-0.51321;,
 5.79773;-0.58673;-0.50280;,
 -3.60584;-0.58673;-0.50280;,
 -3.60584;-0.01989;-0.51321;,
 5.79773;-0.59025;-0.01958;,
 -3.60584;-0.59025;-0.01958;,
 5.79773;-0.58673;0.46364;,
 -3.60584;-0.58673;0.46364;,
 5.79773;-0.01989;0.45994;,
 -3.60584;-0.01989;0.45994;,
 5.79773;0.54694;0.46364;,
 -3.60584;0.54694;0.46364;,
 5.79773;0.55944;-0.01958;,
 -3.60584;0.55944;-0.01958;,
 5.79773;0.54694;-0.50280;,
 -3.60584;0.54694;-0.50280;,
 5.79773;-0.01989;-0.51321;,
 -3.60584;-0.01989;-0.51321;,
 5.79773;-0.01989;-0.01958;,
 5.79773;-0.01989;-0.01958;,
 5.79773;-0.01989;-0.01958;,
 5.79773;-0.01989;-0.01958;,
 5.79773;-0.01989;-0.01958;,
 5.79773;-0.01989;-0.01958;,
 5.79773;-0.01989;-0.01958;,
 5.79773;-0.01989;-0.01958;,
 -3.60584;-0.01989;-0.01958;,
 -3.60584;-0.01989;-0.01958;,
 -3.60584;-0.01989;-0.01958;,
 -3.60584;-0.01989;-0.01958;,
 -3.60584;-0.01989;-0.01958;,
 -3.60584;-0.01989;-0.01958;,
 -3.60584;-0.01989;-0.01958;,
 -3.60584;-0.01989;-0.01958;,
 -4.50174;0.98351;-1.13657;,
 -3.28918;0.98351;-1.13657;,
 -3.28918;-0.98351;-1.13657;,
 -4.50174;-0.98351;-1.13657;,
 -3.28918;0.98351;-1.13657;,
 -3.28918;0.98351;1.13657;,
 -3.28918;-0.98351;1.13657;,
 -3.28918;-0.98351;-1.13657;,
 -3.28918;0.98351;1.13657;,
 -4.50174;0.98351;1.13657;,
 -4.50174;-0.98351;1.13657;,
 -3.28918;-0.98351;1.13657;,
 -4.50174;0.98351;1.13657;,
 -4.50174;0.98351;-1.13657;,
 -4.50174;-0.98351;-1.13657;,
 -4.50174;-0.98351;1.13657;,
 -3.28918;0.98351;-1.13657;,
 -4.50174;0.98351;-1.13657;,
 -4.50174;-0.98351;-1.13657;,
 -3.28918;-0.98351;-1.13657;,
 -40.24275;1.00956;-0.23738;,
 -37.89363;0.64812;-0.23738;,
 -37.89363;-0.35823;-0.23738;,
 -40.24275;0.95007;-0.23738;,
 -37.89363;0.64812;-0.23738;,
 -37.89363;0.64812;0.23738;,
 -37.89363;-0.35823;0.23738;,
 -37.89363;-0.35823;-0.23738;,
 -37.89363;0.64812;0.23738;,
 -40.24275;1.00956;0.23738;,
 -40.24275;0.95007;0.23738;,
 -37.89363;-0.35823;0.23738;,
 -40.24275;1.00956;0.23738;,
 -40.24275;1.00956;-0.23738;,
 -40.24275;0.95007;-0.23738;,
 -40.24275;0.95007;0.23738;,
 -37.89363;0.64812;-0.23738;,
 -40.24275;1.00956;-0.23738;,
 -40.24275;0.95007;-0.23738;,
 -37.89363;-0.35823;-0.23738;,
 -38.03478;0.64414;-0.23738;,
 -3.72686;0.64414;-0.23738;,
 -3.72686;0.17884;-0.23738;,
 -38.03478;0.17884;-0.23738;,
 -3.72686;0.64414;-0.23738;,
 -3.72686;0.64414;0.23738;,
 -3.72686;0.17884;0.23738;,
 -3.72686;0.17884;-0.23738;,
 -3.72686;0.64414;0.23738;,
 -38.03478;0.64414;0.23738;,
 -38.03478;0.17884;0.23738;,
 -3.72686;0.17884;0.23738;,
 -38.03478;0.64414;0.23738;,
 -38.03478;0.64414;-0.23738;,
 -38.03478;0.17884;-0.23738;,
 -38.03478;0.17884;0.23738;,
 -3.72686;0.64414;-0.23738;,
 -38.03478;0.64414;-0.23738;,
 -38.03478;0.17884;-0.23738;,
 -3.72686;0.17884;-0.23738;,
 -38.00680;0.17371;-0.23738;,
 -3.70903;0.17371;-0.23738;,
 -3.70903;-0.36081;-0.23738;,
 -38.00680;-0.36081;-0.23738;,
 -3.70903;0.17371;-0.23738;,
 -3.70903;0.17371;0.23738;,
 -3.70903;-0.36081;0.23738;,
 -3.70903;-0.36081;-0.23738;,
 -3.70903;0.17371;0.23738;,
 -38.00680;0.17371;0.23738;,
 -38.00680;-0.36081;0.23738;,
 -3.70903;-0.36081;0.23738;,
 -38.00680;0.17371;0.23738;,
 -38.00680;0.17371;-0.23738;,
 -38.00680;-0.36081;-0.23738;,
 -38.00680;-0.36081;0.23738;,
 -3.70903;0.17371;-0.23738;,
 -38.00680;0.17371;-0.23738;,
 -38.00680;-0.36081;-0.23738;,
 -3.70903;-0.36081;-0.23738;;
 
 72;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 4;12,14,15,13;,
 4;14,16,17,15;,
 3;18,1,0;,
 3;19,4,1;,
 3;20,6,4;,
 3;21,8,6;,
 3;22,10,8;,
 3;23,12,10;,
 3;24,14,12;,
 3;25,16,14;,
 3;26,3,2;,
 3;27,2,5;,
 3;28,5,7;,
 3;29,7,9;,
 3;30,9,11;,
 3;31,11,13;,
 3;32,13,15;,
 3;33,15,17;,
 4;34,35,36,37;,
 4;35,38,39,36;,
 4;38,40,41,39;,
 4;40,42,43,41;,
 4;42,44,45,43;,
 4;44,46,47,45;,
 4;46,48,49,47;,
 4;48,50,51,49;,
 3;52,35,34;,
 3;53,38,35;,
 3;54,40,38;,
 3;55,42,40;,
 3;56,44,42;,
 3;57,46,44;,
 3;58,48,46;,
 3;59,50,48;,
 3;60,37,36;,
 3;61,36,39;,
 3;62,39,41;,
 3;63,41,43;,
 3;64,43,45;,
 3;65,45,47;,
 3;66,47,49;,
 3;67,49,51;,
 4;68,69,70,71;,
 4;72,73,74,75;,
 4;76,77,78,79;,
 4;80,81,82,83;,
 4;80,73,84,85;,
 4;86,87,74,83;,
 4;88,89,90,91;,
 4;92,93,94,95;,
 4;96,97,98,99;,
 4;100,101,102,103;,
 4;100,93,104,105;,
 4;106,107,94,103;,
 4;108,109,110,111;,
 4;112,113,114,115;,
 4;116,117,118,119;,
 4;120,121,122,123;,
 4;120,113,124,125;,
 4;126,127,114,123;,
 4;128,129,130,131;,
 4;132,133,134,135;,
 4;136,137,138,139;,
 4;140,141,142,143;,
 4;140,133,144,145;,
 4;146,147,134,143;;
 
 MeshMaterialList {
  2;
  72;
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "C:\\Users\\student\\Downloads\\2de8a084592769cb3a19ac5abc73462e_t-removebg-preview.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  42;
  -1.000000;0.000000;0.000000;,
  0.487701;-0.000015;-0.873011;,
  0.636445;0.505775;-0.582348;,
  0.647675;0.761916;-0.000000;,
  0.639411;0.508157;0.577001;,
  0.497131;-0.000132;0.867676;,
  0.632763;-0.494813;0.595627;,
  0.655452;-0.755237;-0.000000;,
  0.629762;-0.492238;-0.600918;,
  0.916813;0.261842;-0.301484;,
  0.908944;0.416917;-0.000000;,
  0.917225;0.263290;0.298960;,
  0.914469;-0.258579;0.311262;,
  0.911878;-0.410460;-0.000000;,
  0.914031;-0.257050;-0.313803;,
  1.000000;0.000000;0.000000;,
  0.000000;-0.000000;-1.000000;,
  0.000000;-0.018359;-0.999831;,
  0.000000;-1.000000;-0.000000;,
  0.000000;-0.999973;0.007281;,
  0.000000;0.000000;1.000000;,
  0.000000;-0.006525;0.999979;,
  0.000000;1.000000;-0.000000;,
  0.000000;0.999666;-0.025858;,
  0.000000;-0.999973;-0.007281;,
  0.000000;0.006526;0.999979;,
  0.000000;0.999666;0.025858;,
  0.000000;0.018359;-0.999831;,
  0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  -1.000000;0.000000;0.000000;,
  0.152072;0.988369;0.000000;,
  -0.486564;-0.873645;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;;
  72;
  4;1,2,9,1;,
  4;2,3,10,9;,
  4;3,4,11,10;,
  4;4,5,5,11;,
  4;5,6,12,5;,
  4;6,7,13,12;,
  4;7,8,14,13;,
  4;8,1,1,14;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;15,15,9;,
  3;15,9,10;,
  3;15,10,11;,
  3;15,11,15;,
  3;15,15,12;,
  3;15,12,13;,
  3;15,13,14;,
  3;15,14,15;,
  4;16,17,17,16;,
  4;24,18,18,24;,
  4;18,19,19,18;,
  4;25,20,20,25;,
  4;20,21,21,20;,
  4;26,22,22,26;,
  4;22,23,23,22;,
  4;27,16,16,27;,
  3;15,15,15;,
  3;15,15,15;,
  3;15,15,15;,
  3;15,15,15;,
  3;15,15,15;,
  3;15,15,15;,
  3;15,15,15;,
  3;15,15,15;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  4;28,28,28,28;,
  4;29,29,29,29;,
  4;30,30,30,30;,
  4;31,31,31,31;,
  4;32,32,32,32;,
  4;33,33,33,33;,
  4;34,34,34,34;,
  4;35,35,35,35;,
  4;36,36,36,36;,
  4;37,37,37,37;,
  4;38,38,38,38;,
  4;39,39,39,39;,
  4;34,34,34,34;,
  4;35,35,35,35;,
  4;36,36,36,36;,
  4;37,37,37,37;,
  4;40,40,40,40;,
  4;41,41,41,41;,
  4;34,34,34,34;,
  4;35,35,35,35;,
  4;36,36,36,36;,
  4;37,37,37,37;,
  4;40,40,40,40;,
  4;41,41,41,41;;
 }
 MeshTextureCoords {
  148;
  0.000000;0.000000;,
  0.125000;0.000000;,
  0.125000;1.000000;,
  0.000000;1.000000;,
  0.250000;0.000000;,
  0.250000;1.000000;,
  0.375000;0.000000;,
  0.375000;1.000000;,
  0.500000;0.000000;,
  0.500000;1.000000;,
  0.625000;0.000000;,
  0.625000;1.000000;,
  0.750000;0.000000;,
  0.750000;1.000000;,
  0.875000;0.000000;,
  0.875000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.062500;0.000000;,
  0.187500;0.000000;,
  0.312500;0.000000;,
  0.437500;0.000000;,
  0.562500;0.000000;,
  0.687500;0.000000;,
  0.812500;0.000000;,
  0.937500;0.000000;,
  0.062500;1.000000;,
  0.187500;1.000000;,
  0.312500;1.000000;,
  0.437500;1.000000;,
  0.562500;1.000000;,
  0.687500;1.000000;,
  0.812500;1.000000;,
  0.937500;1.000000;,
  0.000000;0.000000;,
  0.125000;0.000000;,
  0.125000;1.000000;,
  0.000000;1.000000;,
  0.250000;0.000000;,
  0.250000;1.000000;,
  0.375000;0.000000;,
  0.375000;1.000000;,
  0.500000;0.000000;,
  0.500000;1.000000;,
  0.625000;0.000000;,
  0.625000;1.000000;,
  0.750000;0.000000;,
  0.750000;1.000000;,
  0.875000;0.000000;,
  0.875000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.062500;0.000000;,
  0.187500;0.000000;,
  0.312500;0.000000;,
  0.437500;0.000000;,
  0.562500;0.000000;,
  0.687500;0.000000;,
  0.812500;0.000000;,
  0.937500;0.000000;,
  0.062500;1.000000;,
  0.187500;1.000000;,
  0.312500;1.000000;,
  0.437500;1.000000;,
  0.562500;1.000000;,
  0.687500;1.000000;,
  0.812500;1.000000;,
  0.937500;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;;
 }
}
