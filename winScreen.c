
//{{BLOCK(winScreen)

//======================================================================
//
//	winScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 16 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 512 + 2048 = 3072
//
//	Time-stamp: 2020-03-21, 12:58:01
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short winScreenTiles[256] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x2222,0x0000,0x2222,0x0000,0x2222,0x0000,0x2222,
	0x0000,0x2222,0x0000,0x2222,0x0000,0x2222,0x0000,0x2222,
	0x0000,0x2200,0x0000,0x2200,0x0000,0x2200,0x0000,0x2200,
	0x0000,0x2200,0x0000,0x2200,0x0000,0x2200,0x0000,0x2200,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x0000,0x2200,
	0x0000,0x2200,0x0000,0x2200,0x0000,0x2200,0x0000,0x2200,
	0x0002,0x0000,0x0002,0x0000,0x0002,0x0000,0x0002,0x0000,
	0x0222,0x0000,0x0222,0x0000,0x0222,0x0000,0x0222,0x0000,
	0x2220,0x0002,0x2220,0x0002,0x2220,0x0002,0x2220,0x0002,
	0x2000,0x0222,0x2000,0x0222,0x2000,0x0222,0x2000,0x0222,
	0x0000,0x2220,0x0000,0x2220,0x0000,0x2220,0x0000,0x2220,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0002,0x0000,0x0002,0x0000,0x0002,0x0000,0x0002,0x0000,
	0x2222,0x0000,0x2222,0x0000,0x2222,0x0000,0x2222,0x0000,
	0x2000,0x0222,0x2000,0x0222,0x2000,0x0222,0x2000,0x0222,
	0x0000,0x2200,0x0000,0x2200,0x0000,0x2200,0x0000,0x2200,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0022,0x0000,0x0022,0x0000,0x0022,0x0000,0x0022,0x0000,
	0x2220,0x0002,0x2220,0x0002,0x2220,0x0002,0x2220,0x0002,
	0x0000,0x2222,0x0000,0x2222,0x0000,0x2222,0x0000,0x2222,

	0x0000,0x2000,0x0000,0x2000,0x0000,0x2000,0x0000,0x2000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0222,0x0000,0x0222,0x0000,0x0222,0x0000,0x0222,0x0000,
	0x2200,0x0022,0x2200,0x0022,0x2200,0x0022,0x2200,0x0022,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x0000,0x2200,0x0000,0x2200,0x0000,0x2200,0x0000,0x2200,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
};

const unsigned short winScreenMap[1024] __attribute__((aligned(4)))=
{
	0x0000,0x0001,0x0000,0x0000,0x0002,0x0402,0x0000,0x0000,
	0x0401,0x0000,0x0000,0x0000,0x0003,0x0003,0x0004,0x0404,
	0x0003,0x0003,0x0000,0x0000,0x0000,0x0001,0x0005,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0401,0x0000,0x0000,0x0000,
	0x0000,0x0001,0x0000,0x0000,0x0002,0x0402,0x0000,0x0000,
	0x0401,0x0000,0x0000,0x0000,0x0000,0x0000,0x0002,0x0402,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0006,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0401,0x0000,0x0000,0x0000,

	0x0000,0x0001,0x0000,0x0000,0x0002,0x0402,0x0000,0x0000,
	0x0401,0x0000,0x0000,0x0000,0x0000,0x0000,0x0002,0x0402,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0007,0x0008,
	0x0000,0x0000,0x0000,0x0000,0x0401,0x0000,0x0000,0x0000,
	0x0000,0x0001,0x0000,0x0000,0x0002,0x0402,0x0000,0x0000,
	0x0401,0x0000,0x0000,0x0000,0x0000,0x0000,0x0002,0x0402,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0000,0x0009,
	0x000A,0x0000,0x0000,0x0000,0x0401,0x0000,0x0000,0x0000,

	0x0000,0x0001,0x0000,0x0000,0x0002,0x0402,0x0000,0x0000,
	0x0401,0x0000,0x0000,0x0000,0x0000,0x0000,0x0002,0x0402,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0000,0x0000,
	0x000B,0x0000,0x0000,0x0000,0x0401,0x0000,0x0000,0x0000,
	0x0000,0x0001,0x0000,0x0000,0x0002,0x0402,0x0000,0x0000,
	0x0401,0x0000,0x0000,0x0000,0x0000,0x0000,0x0002,0x0402,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0000,0x0000,
	0x000C,0x000D,0x0000,0x0000,0x0401,0x0000,0x0000,0x0000,

	0x0000,0x0001,0x0000,0x0000,0x0002,0x0402,0x0000,0x0000,
	0x0401,0x0000,0x0000,0x0000,0x0000,0x0000,0x0002,0x0402,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0000,0x0000,
	0x0000,0x0007,0x0008,0x0000,0x0401,0x0000,0x0000,0x0000,
	0x0000,0x0001,0x0000,0x0000,0x0002,0x0402,0x0000,0x0000,
	0x0401,0x0000,0x0000,0x0000,0x0000,0x0000,0x0002,0x0402,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0000,0x0000,
	0x0000,0x0000,0x0009,0x000A,0x0401,0x0000,0x0000,0x0000,

	0x0000,0x0001,0x000E,0x000E,0x000F,0x040F,0x000E,0x000E,
	0x0401,0x0000,0x0000,0x0000,0x000E,0x000E,0x000F,0x040F,
	0x000E,0x000E,0x0000,0x0000,0x0000,0x0001,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x000B,0x0401,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short winScreenPal[256] __attribute__((aligned(4)))=
{
	0x0380,0x6FE0,0x1000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(winScreen)