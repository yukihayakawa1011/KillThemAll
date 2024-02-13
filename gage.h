//============================
//
//ゲージ処理(gage.h)
//Author:早川 友貴
//
//============================
#ifndef _GAGE_H_   //このマクロ定義がされていなかったら
#define _GAGE_H_   //2重インクルード防止のマクロを定義する
#include "main.h"
#include "object2D.h"

//マクロ定義


//ゲージのクラス定義
class CGage : public CObject2D
{
public:
	CGage();
	~CGage();

	static CGage* Create(D3DXVECTOR3 pos, float fRot, int nTex);
	HRESULT Init(D3DXVECTOR3 pos, float fRot, int nTex);

	void Uninit(void);
	void Update(void);
	void Draw(void);

	float GetGageLife(void);
	void SetGageLife(float fLife);

	float GetGageBlood(void);
	void SetGageBlood(float fBlood);

private:
	int m_Tex;		//テクスチャ番号を覚える
	D3DXVECTOR3 m_PosLife; //ゲージの場所
	D3DXVECTOR3 m_PosBlood; //ゲージの場所

};


#endif

