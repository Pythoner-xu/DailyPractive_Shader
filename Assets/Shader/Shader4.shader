Shader "Custom/Shader4" {
	// 属性标签
	Properties {
		// 定义一个颜色
		_Color("MainColor", Color) = (1, 1, 1, 1)
	}
	// 子Shader标签
	SubShader {
		Pass {		
			Material {
				// 显示改颜色
				Diffuse[_Color]
			}
			// 打开灯光（接受光照）
			Lighting On
		}
	}
}
