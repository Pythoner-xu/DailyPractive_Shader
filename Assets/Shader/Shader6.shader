Shader "Custom/Shader6" {
	// 全小写
	properties {
		_color("MainColor", color) = (1, 1, 1, 1)
		_mainTex("Base(RGB)", 2d) = "white"{}
		_tex2("Tex2(RGB)", 2d) = "white"{}
	}

	subshader {
		pass {
			// 显示颜色
			material {
				diffuse[_color]
			}
			lighting on
			// 第一张纹理 * 顶点颜色
			settexture[_mainTex] {
				combine texture * primary
			}
			// 第二张纹理 * 之前颜色（累积）
			settexture[_tex2] {
				combine texture * previous
			}
		}
	}
}
