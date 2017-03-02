Shader "Custom/Shader7" {
	// 属性标签
	Properties {
		_MainTex("Base(RGB)", 2D) = "white" {}
	}
	// 子subshader标签
	SubShader {
		Pass {
			// CG代码
			CGPROGRAM
			#pragma vertex vert   		// 顶点处理声明
			#pragma fragment frag 		// 片段处理声明
			#include "UnityCG.cginc" 	// 内置CG
			
			sampler2D _MainTex;			// 纹理取样（声明一张采样图）
			//float4 _MainTex_ST;			// 用于提取uv
			// vert函数的输出，frag函数的输入
			struct v2f {
				float4 pos : SV_POSITION;
				float2 uv : TEXCOORD0;
			};
			// 输出顶点位置以及顶点uv映射
			v2f vert(appdata_base v)
			{
				v2f o;
				// 顶点的MVP矩阵变换（Model*View*Projector）视口上的位置
				o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
				// 纹理坐标转换为uv（根据Tilling, Offset）
				// o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);
				o.uv = v.texcoord.xy;
				return o;
			}
			// 输出最终每个像素的颜色值
			float4 frag(v2f i) : COLOR
			{
				// 根据uv取得纹理的颜色值作为本像素的颜色值
				float4 texColor = tex2D(_MainTex, i.uv);
				return texColor;
			}

			ENDCG
		}
	}
}
