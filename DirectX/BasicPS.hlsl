#include "Basic.hlsli"

Texture2D<float4> tex : register(t0);  	// 0番スロットに設定されたテクスチャ
SamplerState smp : register(s0);      	// 0番スロットに設定されたサンプラー

float4 main(VSOutput input) : SV_TARGET{
	return float4(input.normal,1);
   //return float4(tex.Sample(smp, input.uv));
   // return float4(1,1,1,1);
}




//cbuffer ConstBufferDataMaterial : register(b0)
//{
//	float4 color; // 色(RGBA)
//};
//
//float4 main() : SV_TARGET
//{
//	return color;
//}