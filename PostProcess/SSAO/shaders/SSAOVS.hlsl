cbuffer cbPerFrame : register(b0)
{
	float4x4 matVP;
	float4x4 matGeo;
};

struct VSInput
{
	float3 Position : POSITION;
};

struct VSOutput
{
	float4 Position : SV_POSITION;
};

VSOutput main(VSInput vin)
{
	VSOutput vout = (VSOutput)0;

	vout.Position =  float4(vin.Position,1.0);
	
	return vout;
}