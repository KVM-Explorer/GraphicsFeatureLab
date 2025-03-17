struct PSInput
{
	float4 Position : SV_POSITION;
	float4 NormalWS: NORMAL;
	float4 Color : COLOR;
};

float4 main(PSInput pin) : SV_TARGET
{
	float4 tmp = pin.NormalWS + float4(1,1,1,1);
	float4 color = tmp / (tmp +1);
	return color;
}
