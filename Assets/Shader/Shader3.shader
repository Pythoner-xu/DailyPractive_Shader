Shader "Custom/Shader3" {
	SubShader {
		Tags{"Queue" = "Transparent"}

		GrabPass{}

		Pass{
			SetTexture[_GrabTexture] {
				Combine one-texture
			}
		}
	}
}
