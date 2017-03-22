module barrelshift(a , shift , rot , out , clk);
	input [31:0] a;
	input rot;
	input [4:0] shift;
	output [31:0] out;
	input clk;

	wire[31:0] w1 , w1t , w2 , w2t , w3 , w3t , w4 , w4t , w5 , w5t , w6 , at;
	//level 1

	piped p1(a , clk , at);

	mux m11( (rot & at[31]) , at[0] , shift[0] , w1t[0]);
	mux m12(  at[0] ,  at[1] ,  shift[0] , w1t[1]);
	mux m13(  at[1] ,  at[2] ,  shift[0] , w1t[2]);
	mux m14(  at[2] ,  at[3] ,  shift[0] , w1t[3]);
	mux m15(  at[3] ,  at[4] ,  shift[0] , w1t[4]);
	mux m16(  at[4] ,  at[5] ,  shift[0] , w1t[5]);
	mux m17(  at[5] ,  at[6] ,  shift[0] , w1t[6]);
	mux m18(  at[6] ,  at[7] ,  shift[0] , w1t[7]);
	mux m19(  at[7] ,  at[8] ,  shift[0] , w1t[8]);
	mux m110( at[8] ,  at[9] ,  shift[0] , w1t[9]);
	mux m111( at[9] ,  at[10] , shift[0] , w1t[10]);
	mux m112( at[10] , at[11] , shift[0] , w1t[11]);
	mux m113( at[11] , at[12] , shift[0] , w1t[12]);
	mux m114( at[12] , at[13] , shift[0] , w1t[13]);
	mux m115( at[13] , at[14] , shift[0] , w1t[14]);
	mux m116( at[14] , at[15] , shift[0] , w1t[15]);
	mux m117( at[15] , at[16] , shift[0] , w1t[16]);
	mux m118( at[16] , at[17] , shift[0] , w1t[17]);
	mux m119( at[17] , at[18] , shift[0] , w1t[18]);
	mux m120( at[18] , at[19] , shift[0] , w1t[19]);
	mux m121( at[19] , at[20] , shift[0] , w1t[20]);
	mux m122( at[20] , at[21] , shift[0] , w1t[21]);
	mux m123( at[21] , at[22] , shift[0] , w1t[22]);
	mux m124( at[22] , at[23] , shift[0] , w1t[23]);
	mux m125( at[23] , at[24] , shift[0] , w1t[24]);
	mux m126( at[24] , at[25] , shift[0] , w1t[25]);
	mux m127( at[25] , at[26] , shift[0] , w1t[26]);
	mux m128( at[26] , at[27] , shift[0] , w1t[27]);
	mux m129( at[27] , at[28] , shift[0] , w1t[28]);
	mux m130( at[28] , at[29] , shift[0] , w1t[29]);
	mux m131( at[29] , at[30] , shift[0] , w1t[30]);
	mux m132( at[30] , at[31] , shift[0] , w1t[31]);

	//level 2

	//reg k;
	//assign k = (rot & w1[30]);
	//reg kk;
	//assign kk = (rot & w1[31]);

	piped p2( w1t , clk , w1);

	mux m21( (rot & w1[30]) , w1[0] , shift[1] , w2t[0]);
	mux m22( (rot & w1[31]) , w1[1] , shift[1] , w2t[1]);
	mux m23(  w1[0] ,  w1[2] ,  shift[1] , w2t[2]);
	mux m24(  w1[1] ,  w1[3] ,  shift[1] , w2t[3]);
	mux m25(  w1[2] ,  w1[4] ,  shift[1] , w2t[4]);
	mux m26(  w1[3] ,  w1[5] ,  shift[1] , w2t[5]);
	mux m27(  w1[4] ,  w1[6] ,  shift[1] , w2t[6]);
	mux m28(  w1[5] ,  w1[7] ,  shift[1] , w2t[7]);
	mux m29(  w1[6] ,  w1[8] ,  shift[1] , w2t[8]);
	mux m210( w1[7] ,  w1[9] ,  shift[1] , w2t[9]);
	mux m211( w1[8] ,  w1[10] , shift[1] , w2t[10]);
	mux m212( w1[9] ,  w1[11] , shift[1] , w2t[11]);
	mux m213( w1[10] , w1[12] , shift[1] , w2t[12]);
	mux m214( w1[11] , w1[13] , shift[1] , w2t[13]);
	mux m215( w1[12] , w1[14] , shift[1] , w2t[14]);
	mux m216( w1[13] , w1[15] , shift[1] , w2t[15]);
	mux m217( w1[14] , w1[16] , shift[1] , w2t[16]);
	mux m218( w1[15] , w1[17] , shift[1] , w2t[17]);
	mux m219( w1[16] , w1[18] , shift[1] , w2t[18]);
	mux m220( w1[17] , w1[19] , shift[1] , w2t[19]);
	mux m221( w1[18] , w1[20] , shift[1] , w2t[20]);
	mux m222( w1[19] , w1[21] , shift[1] , w2t[21]);
	mux m223( w1[20] , w1[22] , shift[1] , w2t[22]);
	mux m224( w1[21] , w1[23] , shift[1] , w2t[23]);
	mux m225( w1[22] , w1[24] , shift[1] , w2t[24]);
	mux m226( w1[23] , w1[25] , shift[1] , w2t[25]);
	mux m227( w1[24] , w1[26] , shift[1] , w2t[26]);
	mux m228( w1[25] , w1[27] , shift[1] , w2t[27]);
	mux m229( w1[26] , w1[28] , shift[1] , w2t[28]);
	mux m230( w1[27] , w1[29] , shift[1] , w2t[29]);
	mux m231( w1[28] , w1[30] , shift[1] , w2t[30]);
	mux m232( w1[29] , w1[31] , shift[1] , w2t[31]);

	//level 3
	//change to first shift then rotate if not working

	piped p3(w2t , clk , w2);

	mux s31(w2[28] , 0 , rot , w6[0]);
	mux s32(w2[29] , 0 , rot , w6[1]);
	mux s33(w2[30] , 0 , rot , w6[2]);
	mux s34(w2[31] , 0 , rot , w6[3]);

	mux m31 ( w6[0] ,  w2[0] ,  shift[2] , w3t[0]);
	mux m32 ( w6[1] ,  w2[1] ,  shift[2] , w3t[1]);
	mux m33 ( w6[2] ,  w2[2] ,  shift[2] , w3t[2]);
	mux m34 ( w6[3] ,  w2[3] ,  shift[2] , w3t[3]);
	mux m35 ( w2[0] ,  w2[4] ,  shift[2] , w3t[4]);
	mux m36 ( w2[1] ,  w2[5] ,  shift[2] , w3t[5]);
	mux m37 ( w2[2] ,  w2[6] ,  shift[2] , w3t[6]);
	mux m38 ( w2[3] ,  w2[7] ,  shift[2] , w3t[7]);
	mux m39 ( w2[4] ,  w2[8] ,  shift[2] , w3t[8]);
	mux m310( w2[5] ,  w2[9] ,  shift[2] , w3t[9]);
	mux m311( w2[6] ,  w2[10] , shift[2] , w3t[10]);
	mux m312( w2[7] ,  w2[11] , shift[2] , w3t[11]);
	mux m313( w2[8] ,  w2[12] , shift[2] , w3t[12]);
	mux m314( w2[9] ,  w2[13] , shift[2] , w3t[13]);
	mux m315( w2[10] , w2[14] , shift[2] , w3t[14]);
	mux m316( w2[11] , w2[15] , shift[2] , w3t[15]);
	mux m317( w2[12] , w2[16] , shift[2] , w3t[16]);
	mux m318( w2[13] , w2[17] , shift[2] , w3t[17]);
	mux m319( w2[14] , w2[18] , shift[2] , w3t[18]);
	mux m320( w2[15] , w2[19] , shift[2] , w3t[19]);
	mux m321( w2[16] , w2[20] , shift[2] , w3t[20]);
	mux m322( w2[17] , w2[21] , shift[2] , w3t[21]);
	mux m323( w2[18] , w2[22] , shift[2] , w3t[22]);
	mux m324( w2[19] , w2[23] , shift[2] , w3t[23]);
	mux m325( w2[20] , w2[24] , shift[2] , w3t[24]);
	mux m326( w2[21] , w2[25] , shift[2] , w3t[25]);
	mux m327( w2[22] , w2[26] , shift[2] , w3t[26]);
	mux m328( w2[23] , w2[27] , shift[2] , w3t[27]);
	mux m329( w2[24] , w2[28] , shift[2] , w3t[28]);
	mux m330( w2[25] , w2[29] , shift[2] , w3t[29]);
	mux m331( w2[26] , w2[30] , shift[2] , w3t[30]);
	mux m332( w2[27] , w2[31] , shift[2] , w3t[31]);

	//level 4

	piped p4( w3t , clk , w3);

	mux s41(w3[24] , 0 , rot , w6[4]);
	mux s42(w3[25] , 0 , rot , w6[5]);
	mux s43(w3[26] , 0 , rot , w6[6]);
	mux s44(w3[27] , 0 , rot , w6[7]);
	mux s45(w3[28] , 0 , rot , w6[8]);
	mux s46(w3[29] , 0 , rot , w6[9]);
	mux s47(w3[30] , 0 , rot , w6[10]);
	mux s48(w3[31] , 0 , rot , w6[11]);

	mux m41 ( w6[4] ,  w3[0] ,  shift[3] , w4t[0]);
	mux m42 ( w6[5] ,  w3[1] ,  shift[3] , w4t[1]);
	mux m43 ( w6[6] ,  w3[2] ,  shift[3] , w4t[2]);
	mux m44 ( w6[7] ,  w3[3] ,  shift[3] , w4t[3]);
	mux m45 ( w6[8] ,  w3[4] ,  shift[3] , w4t[4]);
	mux m46 ( w6[9] ,  w3[5] ,  shift[3] , w4t[5]);
	mux m47 ( w6[10] , w3[6] ,  shift[3] , w4t[6]);
	mux m48 ( w6[11] , w3[7] ,  shift[3] , w4t[7]);
	mux m49 ( w3[0] ,  w3[8] ,  shift[3] , w4t[8]);
	mux m410( w3[1] ,  w3[9] ,  shift[3] , w4t[9]);
	mux m411( w3[2] ,  w3[10] , shift[3] , w4t[10]);
	mux m412( w3[3] ,  w3[11] , shift[3] , w4t[11]);
	mux m413( w3[4] ,  w3[12] , shift[3] , w4t[12]);
	mux m414( w3[5] ,  w3[13] , shift[3] , w4t[13]);
	mux m415( w3[6] ,  w3[14] , shift[3] , w4t[14]);
	mux m416( w3[7] ,  w3[15] , shift[3] , w4t[15]);
	mux m417( w3[8] ,  w3[16] , shift[3] , w4t[16]);
	mux m418( w3[9]  , w3[17] , shift[3] , w4t[17]);
	mux m419( w3[10] , w3[18] , shift[3] , w4t[18]);
	mux m420( w3[11] , w3[19] , shift[3] , w4t[19]);
	mux m421( w3[12] , w3[20] , shift[3] , w4t[20]);
	mux m422( w3[13] , w3[21] , shift[3] , w4t[21]);
	mux m423( w3[14] , w3[22] , shift[3] , w4t[22]);
	mux m424( w3[15] , w3[23] , shift[3] , w4t[23]);
	mux m425( w3[16] , w3[24] , shift[3] , w4t[24]);
	mux m426( w3[17] , w3[25] , shift[3] , w4t[25]);
	mux m427( w3[18] , w3[26] , shift[3] , w4t[26]);
	mux m428( w3[19] , w3[27] , shift[3] , w4t[27]);
	mux m429( w3[20] , w3[28] , shift[3] , w4t[28]);
	mux m430( w3[21] , w3[29] , shift[3] , w4t[29]);
	mux m431( w3[22] , w3[30] , shift[3] , w4t[30]);
	mux m432( w3[23] , w3[31] , shift[3] , w4t[31]);



	//level 5

	piped p5(w4t , clk , w4);

	mux s51 ( w4[16] , 0 , rot , w6[12]);
	mux s52 ( w4[17] , 0 , rot , w6[13]);
	mux s53 ( w4[18] , 0 , rot , w6[14]);
	mux s54 ( w4[19] , 0 , rot , w6[15]);
	mux s55 ( w4[20] , 0 , rot , w6[16]);
	mux s56 ( w4[21] , 0 , rot , w6[17]);
	mux s57 ( w4[22] , 0 , rot , w6[18]);
	mux s58 ( w4[23] , 0 , rot , w6[19]);
	mux s59 ( w4[24] , 0 , rot , w6[20]);
	mux s510( w4[25] , 0 , rot , w6[21]);
	mux s511( w4[26] , 0 , rot , w6[22]);
	mux s512( w4[27] , 0 , rot , w6[23]);
	mux s513( w4[28] , 0 , rot , w6[24]);
	mux s514( w4[29] , 0 , rot , w6[25]);
	mux s515( w4[30] , 0 , rot , w6[26]);
	mux s516( w4[31] , 0 , rot , w6[27]);

	mux m51 ( w6[12] , w4[0] ,  shift[4] , w5t[0]);
	mux m52 ( w6[13] , w4[1] ,  shift[4] , w5t[1]);
	mux m53 ( w6[14] , w4[2] ,  shift[4] , w5t[2]);
	mux m54 ( w6[15] , w4[3] ,  shift[4] , w5t[3]);
	mux m55 ( w6[16] , w4[4] ,  shift[4] , w5t[4]);
	mux m56 ( w6[17] , w4[5] ,  shift[4] , w5t[5]);
	mux m57 ( w6[18] , w4[6] ,  shift[4] , w5t[6]);
	mux m58 ( w6[19] , w4[7] ,  shift[4] , w5t[7]);
	mux m59 ( w6[20] , w4[8] ,  shift[4] , w5t[8]);
	mux m510( w6[21] , w4[9] ,  shift[4] , w5t[9]);
	mux m511( w6[22] , w4[10] , shift[4] , w5t[10]);
	mux m512( w6[23] , w4[11] , shift[4] , w5t[11]);
	mux m513( w6[24] , w4[12] , shift[4] , w5t[12]);
	mux m514( w6[25] , w4[13] , shift[4] , w5t[13]);
	mux m515( w6[26] , w4[14] , shift[4] , w5t[14]);
	mux m516( w6[27] , w4[15] , shift[4] , w5t[15]);
	mux m517( w4[0]  , w4[16] , shift[4] , w5t[16]);
	mux m518( w4[1]  , w4[17] , shift[4] , w5t[17]);
	mux m519( w4[2]  , w4[18] , shift[4] , w5t[18]);
	mux m520( w4[3]  , w4[19] , shift[4] , w5t[19]);
	mux m521( w4[4]  , w4[20] , shift[4] , w5t[20]);
	mux m522( w4[5]  , w4[21] , shift[4] , w5t[21]);
	mux m523( w4[6]  , w4[22] , shift[4] , w5t[22]);
	mux m524( w4[7]  , w4[23] , shift[4] , w5t[23]);
	mux m525( w4[8]  , w4[24] , shift[4] , w5t[24]);
	mux m526( w4[9]  , w4[25] , shift[4] , w5t[25]);
	mux m527( w4[10] , w4[26] , shift[4] , w5t[26]);
	mux m528( w4[11] , w4[27] , shift[4] , w5t[27]);
	mux m529( w4[12] , w4[28] , shift[4] , w5t[28]);
	mux m530( w4[13] , w4[29] , shift[4] , w5t[29]);
	mux m531( w4[14] , w4[30] , shift[4] , w5t[30]);
	mux m532( w4[15] , w4[31] , shift[4] , w5t[31]);

	piped p6(w5t , clk , w5);
	//level 5 done

	assign out = w5;

endmodule // barrelshift