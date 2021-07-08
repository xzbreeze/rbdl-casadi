model = {
animation_settings = {
  force_scale = 1/(81.68*9.81),
  torque_scale = 1/(81.68*9.81*1.73),
  force_color = {1., 1., 0.},
  torque_color = {0., 1., 0.},
  force_transparency = 0.25,
  torque_transparency = 0.25,
},
gravity = { 0, 0, -9.81,},
configuration = {
	axis_front  = { 1, 0, 0,},
	axis_right  = { 0, -1, 0,},
	axis_up     = { 0, 0, 1,},
},
foot_dimensions = {0.15, 0, 0.08},
points = {
	{name = "VuaPelvis_L",           body = "Pelvis",     point = {-0.019272,  0.000000,  0.050797,},},
	{name = "VuaPelvis_R",           body = "Pelvis",     point = {-0.019272,  0.000000,  0.050797,},},
	{name = "VuaThigh_R",            body = "Thigh_R",    point = {-0.019272,  0.000000, -0.365663,},},
	{name = "FootCenter_R",          body = "Foot_R",     point = {0.045000,   0.000000, -0.060000,},},	
	{name = "VuaThigh_L",            body = "Thigh_L",    point = {-0.019272,  0.000000, -0.356617,},},
	{name = "FootCenter_L",          body = "Foot_L",     point = {0.045000,   0.000000, -0.060000,},},	
	{name = "VuaUpperTrunk_L",       body = "UpperTrunk", point = {0.028954,   0.000000,  0.116112,},},
	{name = "VuaUpperTrunk_R",       body = "UpperTrunk", point = {0.028954,   0.000000,  0.116112,},},
	{name = "ProximalMetacarpal_R",  body = "Hand_R",     point = {-0.000000,  0.000000, -0.022534,},},
	{name = "DistalMetacarpal_R",    body = "Hand_R",     point = {-0.000000,  0.000000, -0.090136,},},
	{name = "ProximalMetacarpal_L",  body = "Hand_L",     point = {-0.000000,  0.000000, -0.019502,},},
	{name = "DistalMetacarpal_L",    body = "Hand_L",     point = {-0.000000,  0.000000, -0.078008,},},
},
frames = {	
	{name   = "Pelvis",
	parent = "ROOT",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, 0.000000,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 8.188060,
		com = 	{ -0.049163, 0.000000, 0.056939,},
		inertia = 
			{{ 0.057213, 0.000000, 0.000000,},
			{ 0.000000, 0.046820, 0.000000,},
			{ 0.000000, 0.000000, 0.060991,},},
	},
	joint= 
		{{ 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 0.000000,},
		{ 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000,},
		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		LASI = 	{ 0.047794, 0.000000, 0.070908,},
		RASI = 	{ 0.047794, -0.000000, 0.070908,},
		LPSI = 	{ -0.106106, 0.000000, 0.070908,},
		RPSI = 	{ -0.106106, -0.000000, 0.070908,},},
	visuals = {{
		src         = "meshes/pelvis.obj",
		dimensions  = 	{ 0.192719, 0.010000, 0.126993,},
		mesh_center = 	{ -0.013738, 0.000000, 0.035454,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "Thigh_R",
	parent = "Pelvis",
	joint_frame = {
		r = 	{ 0.000000, -0.000000, 0.000000,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 14.301973,
		com = 	{ -0.000000, -0.000000, -0.184859,},
		inertia = 
			{{ 0.317834, 0.000000, 0.000000,},
			{ 0.000000, 0.317834, 0.000000,},
			{ 0.000000, 0.000000, 0.080366,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		RTHI = 	{ -0.007376, -0.000000, -0.243721,},
		RKNE = 	{ -0.011611, -0.000000, -0.454494,},},
	visuals = {{
		src         = "meshes/thigh.obj",
		dimensions  = 	{ 0.192719, 0.010000, 0.451425,},
		mesh_center = 	{ 0.000000, -0.010000, -0.225712,},
		color       = 	{ 0.750000, 0.250000, 0.250000,},
		},},
	},
	{name   = "Shank_R",
	parent = "Thigh_R",
	joint_frame = {
		r = 	{ 0.000000, -0.000000, -0.451425,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 2.378041,
		com = 	{ -0.000000, -0.000000, -0.178089,},
		inertia = 
			{{ 0.029827, 0.000000, 0.000000,},
			{ 0.000000, 0.028704, 0.000000,},
			{ 0.000000, 0.000000, 0.004577,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		RTIB = 	{ -0.014044, -0.000000, -0.142309,},
		RANK = 	{ -0.019042, -0.000000, -0.424458,},},
	visuals = {{
		src         = "meshes/shank.obj",
		dimensions  = 	{ 0.119343, 0.010000, 0.405208,},
		mesh_center = 	{ -0.000000, -0.010000, -0.202604,},
		color       = 	{ 0.750000, 0.250000, 0.250000,},
		},},
	},
	{name   = "Foot_R",
	parent = "Shank_R",
	joint_frame = {
		r = 	{ -0.000000, 0.000000, -0.405208,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 1.690832,
		com = 	{ 0.051769, -0.000000, -0.088557,},
		inertia = 
			{{ 0.002770, 0.000000, 0.000000,},
			{ 0.000000, 0.011450, 0.000000,},
			{ 0.000000, 0.000000, 0.010401,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		RTOE = 	{ 0.207603, -0.000000, -0.087981,},
		RHEE = 	{ -0.090656, -0.000000, -0.087981,},},
	visuals = {{
		src         = "meshes/unit_sphere_medres.obj",
		dimensions  = 	{ 0.30, 0.010000, 0.08,},
		mesh_center = 	{ 0.045, 0.010000, -0.06,},
		color       = 	{ 0.250000, 0.250000, 0.750000,},
		},},
	},
	{name   = "Thigh_L",
	parent = "Pelvis",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.000000,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 14.301973,
		com = 	{ -0.000000, -0.000000, -0.184859,},
		inertia = 
			{{ 0.317834, 0.000000, 0.000000,},
			{ 0.000000, 0.317834, 0.000000,},
			{ 0.000000, 0.000000, 0.080366,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		LTHI = 	{ -0.000089, 0.000000, -0.307906,},
		LKNE = 	{ -0.007108, 0.000000, -0.450044,},},
	visuals = {{
		src         = "meshes/thigh.obj",
		dimensions  = 	{ 0.192719, 0.010000, 0.451425,},
		mesh_center = 	{ 0.000000, 0.010000, -0.225712,},
		color       = 	{ 0.250000, 0.250000, 0.750000,},
		},},
	},
	{name   = "Shank_L",
	parent = "Thigh_L",
	joint_frame = {
		r = 	{ 0.000000, -0.000000, -0.451425,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 2.378041,
		com = 	{ -0.000000, -0.000000, -0.178089,},
		inertia = 
			{{ 0.029827, 0.000000, 0.000000,},
			{ 0.000000, 0.028704, 0.000000,},
			{ 0.000000, 0.000000, 0.004577,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		LTIB = 	{ -0.004725, 0.000000, -0.218761,},
		LANK = 	{ -0.004249, 0.000000, -0.425487,},},
	visuals = {{
		src         = "meshes/shank.obj",
		dimensions  = 	{ 0.119343, 0.010000, 0.405208,},
		mesh_center = 	{ -0.000000, 0.010000, -0.202604,},
		color       = 	{ 0.250000, 0.250000, 0.750000,},
		},},
	},
	{name   = "Foot_L",
	parent = "Shank_L",
	joint_frame = {
		r = 	{ -0.000000, 0.000000, -0.405208,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 1.690832,
		com = 	{ 0.051769, -0.000000, -0.088557,},
		inertia = 
			{{ 0.002770, 0.000000, 0.000000,},
			{ 0.000000, 0.011450, 0.000000,},
			{ 0.000000, 0.000000, 0.010401,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		LTOE = 	{ 0.198558, 0.000000, -0.093498,},
		LHEE = 	{ -0.089995, 0.000000, -0.093498,},},
	visuals = {{
		src         = "meshes/unit_sphere_medres.obj",
		dimensions  = 	{ 0.30, 0.010000, 0.08,},
		mesh_center = 	{ 0.045, 0.010000, -0.06,},
		color       = 	{ 0.250000, 0.250000, 0.750000,},
		},},
	},
	{name   = "MiddleTrunk",
	parent = "Pelvis",
	joint_frame = {
		r = 	{ -0.029122, 0.000000, 0.097331,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 11.214196,
		com = 	{ 0.025006, 0.000000, 0.120534,},
		inertia = 
			{{ 0.073301, 0.000000, 0.000000,},
			{ 0.000000, 0.044726, 0.000000,},
			{ 0.000000, 0.000000, 0.129894,},},
	},
	joint={},
	markers = {},
	visuals = {{
		src         = "meshes/middleTrunk.obj",
		dimensions  = 	{ 0.203443, 0.010000, 0.149091,},
		mesh_center = 	{ 0.002402, 0.000000, 0.077956,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "UpperTrunk",
	parent = "MiddleTrunk",
	joint_frame = {
		r = 	{ -0.019094, 0.000000, 0.152881,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 12.242890,
		com = 	{ -0.008105, 0.000000, 0.168035,},
		inertia = 
			{{ 0.145743, 0.000000, 0.000000,},
			{ 0.000000, 0.062423, 0.000000,},
			{ 0.000000, 0.000000, 0.165279,},},
	},
	joint={},
	markers = {
		LSHO = 	{ -0.002042, 0.000000, 0.219427,},
		RSHO = 	{ 0.001540, -0.000000, 0.213646,},
		C7   = 	{ -0.047167, -0.000000, 0.286328,},
		RBAK = 	{ -0.092841, -0.000000, 0.098077,},
		CLAV = 	{ 0.068965, -0.000000, 0.224382,},
		T10  = 	{ -0.077616, 0.000000, 0.035326,},
		STRN = 	{ 0.121634, 0.000000, 0.052808,},},
	visuals = {{
		src         = "meshes/upperTrunk.obj",
		dimensions  = 	{ 0.193027, 0.010000, 0.290280,},
		mesh_center = 	{ 0.013342, 0.000000, 0.116112,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "Head",
	parent = "UpperTrunk",
	joint_frame = {
		r = 	{ 0.005190, 0.000000, 0.286336,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 4.893817,
		com = 	{ 0.042828, 0.000000, 0.107427,},
		inertia = 
			{{ 0.028272, 0.000000, 0.000000,},
			{ 0.000000, 0.030552, 0.000000,},
			{ 0.000000, 0.000000, 0.019875,},},
	},
	joint={},
	markers = {
		LFHD = 	{ 0.116410, 0.000000, 0.174188,},
		RFHD = 	{ 0.116410, -0.000000, 0.174188,},
		LBHD = 	{ -0.032306, 0.000000, 0.174188,},
		RBHD = 	{ -0.032306, -0.000000, 0.174188,},},
	visuals = {{
		src         = "meshes/head.obj",
		dimensions  = 	{ 0.191206, 0.010000, 0.212451,},
		mesh_center = 	{ 0.043978, 0.000000, 0.133254,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "UpperArm_R",
	parent = "UpperTrunk",
	joint_frame = {
		r = 	{ 0.002137, -0.000000, 0.182111,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 2.546371,
		com = 	{ -0.000000, 0.000000, -0.165073,},
		inertia = 
			{{ 0.017034, 0.000000, 0.000000,},
			{ 0.000000, 0.015301, 0.000000,},
			{ 0.000000, 0.000000, 0.006064,},},
	},
	joint= {},
	markers = {
		RUPA = 	{ 0.003068, -0.000000, -0.198742,},
		RELB = 	{ 0.010577, -0.000000, -0.290119,},},
	visuals = {{
		src         = "meshes/upperArm.obj",
		dimensions  = 	{ 0.108542, 0.010000, 0.320615,},
		mesh_center = 	{ 0.000000, -0.010000, -0.128246,},
		color       = 	{ 0.750000, 0.250000, 0.250000,},
		},},
	},
	{name   = "LowerArm_R",
	parent = "UpperArm_R",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.285989,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 1.155195,
		com = 	{ -0.000000, 0.000000, -0.117170,},
		inertia = 
			{{ 0.004659, 0.000000, 0.000000,},
			{ 0.000000, 0.005003, 0.000000,},
			{ 0.000000, 0.000000, 0.001467,},},
	},
	joint= {},
	markers = {
		RWRA = 	{ 0.020764, -0.000000, -0.261224,},
		RWRB = 	{ -0.035644, -0.000000, -0.267588,},},
	visuals = {{
		src         = "meshes/lowerArm.obj",
		dimensions  = 	{ -0.063461, 0.010000, 0.256165,},
		mesh_center = 	{ 0.000000, -0.010000, -0.128082,},
		color       = 	{ 0.750000, 0.250000, 0.250000,},
		},},
	},
	{name   = "Hand_R",
	parent = "LowerArm_R",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.256165,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 0.496671,
		com = 	{ 0.000000, -0.000000, -0.066417,},
		inertia = 
			{{ 0.001001, 0.000000, 0.000000,},
			{ 0.000000, 0.001370, 0.000000,},
			{ 0.000000, 0.000000, 0.000550,},},
	},
	joint= {},
	markers = {
		RFIN = 	{ 0.026973, -0.000000, -0.083431,},},
	visuals = {{
		src         = "meshes/hand.obj",
		dimensions  = 	{ -0.131799, 0.010000, 0.199964,},
		mesh_center = 	{ 0.000000, -0.010000, -0.099982,},
		color       = 	{ 0.750000, 0.250000, 0.250000,},
		},},
	},
	{name   = "UpperArm_L",
	parent = "UpperTrunk",
	joint_frame = {
		r = 	{ 0.002137, 0.000000, 0.182111,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 2.546371,
		com = 	{ -0.000000, 0.000000, -0.165073,},
		inertia = 
			{{ 0.017034, 0.000000, 0.000000,},
			{ 0.000000, 0.015301, 0.000000,},
			{ 0.000000, 0.000000, 0.006064,},},
	},
	joint= {},
	markers = {
		LUPA = 	{ -0.003256, 0.000000, -0.089328,},
		LELB = 	{ 0.006799, 0.000000, -0.273444,},},
	visuals = {{
		src         = "meshes/upperArm.obj",
		dimensions  = 	{ 0.108542, 0.010000, 0.320615,},
		mesh_center = 	{ 0.000000, 0.010000, -0.128246,},
		color       = 	{ 0.250000, 0.250000, 0.750000,},
		},},
	},
	{name   = "LowerArm_L",
	parent = "UpperArm_L",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.285989,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 1.155195,
		com = 	{ 0.000000, -0.000000, -0.117170,},
		inertia = 
			{{ 0.004659, -0.000000, 0.000000,},
			{ -0.000000, 0.005003, 0.000000,},
			{ 0.000000, 0.000000, 0.001467,},},
	},
	joint={},
	markers = {
		LWRA = 	{ 0.017935, 0.000000, -0.264027,},
		LWRB = 	{ -0.037456, 0.000000, -0.260664,},},
	visuals = {{
		src         = "meshes/lowerArm.obj",
		dimensions  = 	{ 0.063461, 0.010000, 0.256165,},
		mesh_center = 	{ 0.000000, 0.010000, -0.128082,},
		color       = 	{ 0.250000, 0.250000, 0.750000,},
		},},
	},
	{name   = "Hand_L",
	parent = "LowerArm_L",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.256165,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 0.496671,
		com = 	{ -0.000000, 0.000000, -0.066417,},
		inertia = 
			{{ 0.001001, -0.000000, 0.000000,},
			{ -0.000000, 0.001370, 0.000000,},
			{ 0.000000, 0.000000, 0.000550,},},
	},
	joint= {},
	markers = {
		LFIN = 	{ 0.024900, 0.000000, -0.093636,},},
	visuals = {{
		src         = "meshes/hand.obj",
		dimensions  = 	{ 0.131799, 0.010000, 0.199964,},
		mesh_center = 	{ 0.000000, 0.010000, -0.099982,},
		color       = 	{ 0.250000, 0.250000, 0.750000,},
		},},
	},
	},
};

return model;
