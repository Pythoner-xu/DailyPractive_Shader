Shader "Custom/Shader5" {
	// 属性标签
	Properties {
		_Color("MainColor", Color) = (1,1,1,1)
		_MainTex("Base(RGB)", 2D) = "white"{}
	}

	// 子Shader标签
	SubShader {
		Pass {
			// 显示颜色
			Material {
				Diffuse[_Color]
			}
			// 接受光照
			Lighting On
			// 
			SetTexture[_MainTex] {
				// Combine color部分，alpha部分
				Combine texture * primary, texture * constant
			}
		}
	}
}
