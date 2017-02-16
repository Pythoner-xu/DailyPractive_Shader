Shader "Custom/Shaser2" {
	Properties {
		_MainTex("Base", 2D) = "white" {TexGen Eyelinear}
	}

	SubShader {
		Pass {
			Lighting On
			SetTexture[_MainTex]{ Combine texture}
		}
	}
}
