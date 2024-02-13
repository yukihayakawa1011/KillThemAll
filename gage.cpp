//============================
//
//ゲージ処理(gage.cpp)
//Author:早川 友貴
//
//============================
#include "manager.h"
#include "gage.h"
#include "renderer.h"
#include "debugproc.h"

//============================
//コンストラクタ
//============================
CGage::CGage()
{
	m_Tex = 0;	//覚えるテクスチャ番号のクリア
	m_PosLife = D3DXVECTOR3(0.0f, 0.0f, 0.0f);	//ゲージの場所のクリア
}

//============================
//デストラクタ
//============================
CGage::~CGage()
{

}

//============================
//生成処理
//============================
CGage* CGage::Create(D3DXVECTOR3 pos, float fRot, int nTex)
{
	CGage* pGage;

	//オブジェクト2Dの生成
	pGage = NEW_DBG CGage;

	//初期化処理
	pGage->Init(D3DXVECTOR3(pos.x, pos.y, pos.z), fRot, nTex);

	return pGage;
}

//============================
//ポリゴンの初期化
//============================
HRESULT CGage::Init(D3DXVECTOR3 pos, float fRot, int nTex)
{
	//デバイスの取得
	CRenderer* pRenderer = CManager::GetInstance()->GetRenderer();
	LPDIRECT3DDEVICE9 pDevice = pRenderer->GetDevice();

	if (nTex == 0)
	{//テクスチャの読み込み
		D3DXCreateTextureFromFile(pDevice,
			"data\\TEXTURE\\wall.jpg",
			&m_pTexture);
	}

	if (nTex == 1)
	{//テクスチャの読み込み
		D3DXCreateTextureFromFile(pDevice,
			"data\\TEXTURE\\Damage01.png",
			&m_pTexture);
	}

	if (nTex == 2)
	{//テクスチャの読み込み
		D3DXCreateTextureFromFile(pDevice,
			"data\\TEXTURE\\parsent.png",
			&m_pTexture);
	}

	//頂点バッファの生成
	pDevice->CreateVertexBuffer(sizeof(VERTEX_2D) * 4,
		D3DUSAGE_WRITEONLY,
		FVF_VERTEX_2D,
		D3DPOOL_MANAGED,
		&m_pVtxBuff,
		NULL);

	//頂点バッファがNULLだったら
	if (m_pVtxBuff == NULL)
	{
		return E_FAIL;
	}

	//テクスチャのポインタがNULLだったら
	if (m_pTexture == NULL)
	{
		return E_FAIL;
	}

	VERTEX_2D* pVtx;    //頂点情報へのポインタ

	//頂点バッファをロックし、頂点情報へのポインタを取得
	m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);

	if (nTex == 0)
	{
		//頂点座標の設定
		pVtx[0].pos = D3DXVECTOR3(10.0f, pos.y - 10.0f, 0.0f);
		pVtx[1].pos = D3DXVECTOR3(pos.x + 200.0f, pos.y - 10.0f, 0.0f);
		pVtx[2].pos = D3DXVECTOR3(10.0f, pos.y + 10.0f, 0.0f);
		pVtx[3].pos = D3DXVECTOR3(pos.x + 200.0f, pos.y + 10.0f, 0.0f);

		//頂点カラーの設定
		pVtx[0].col = D3DXCOLOR(0.0f, 1.0f, 0.0f, 1.0f);
		pVtx[1].col = D3DXCOLOR(0.0f, 1.0f, 0.0f, 1.0f);
		pVtx[2].col = D3DXCOLOR(0.0f, 1.0f, 0.0f, 1.0f);
		pVtx[3].col = D3DXCOLOR(0.0f, 1.0f, 0.0f, 1.0f);

		m_PosLife = D3DXVECTOR3(200.0f, 0.0f, 0.0f);
	}

	//rhw(法線)の設定
	pVtx[0].rhw = 1.0f;
	pVtx[1].rhw = 1.0f;
	pVtx[2].rhw = 1.0f;
	pVtx[3].rhw = 1.0f;

	if (nTex == 1)
	{
		//頂点座標の設定
		pVtx[0].pos = D3DXVECTOR3(10.0f, pos.y - 10.0f, 0.0f);
		pVtx[1].pos = D3DXVECTOR3(pos.x + 200.0f, pos.y - 10.0f, 0.0f);
		pVtx[2].pos = D3DXVECTOR3(10.0f, pos.y + 10.0f, 0.0f);
		pVtx[3].pos = D3DXVECTOR3(pos.x + 200.0f, pos.y + 10.0f, 0.0f);

		//頂点カラーの設定
		pVtx[0].col = D3DXCOLOR(1.0f, 0.0f, 0.0f, 1.0f);
		pVtx[1].col = D3DXCOLOR(1.0f, 0.0f, 0.0f, 1.0f);
		pVtx[2].col = D3DXCOLOR(1.0f, 0.0f, 0.0f, 1.0f);
		pVtx[3].col = D3DXCOLOR(1.0f, 0.0f, 0.0f, 1.0f);
	}

	if (nTex == 2)
	{
		//頂点座標の設定
		pVtx[0].pos = D3DXVECTOR3(pos.x - 30.0f, pos.y - 30.0f, 0.0f);
		pVtx[1].pos = D3DXVECTOR3(pos.x + 30.0f, pos.y - 30.0f, 0.0f);
		pVtx[2].pos = D3DXVECTOR3(pos.x - 30.0f, pos.y + 30.0f, 0.0f);
		pVtx[3].pos = D3DXVECTOR3(pos.x + 30.0f, pos.y + 30.0f, 0.0f);

		//頂点カラーの設定
		pVtx[0].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
		pVtx[1].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
		pVtx[2].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
		pVtx[3].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);

		SetCol(D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f));
	}

	//テクスチャ座標の設定
	pVtx[0].tex = D3DXVECTOR2(0.0f, 0.0f);
	pVtx[1].tex = D3DXVECTOR2(1.0f, 0.0f);
	pVtx[2].tex = D3DXVECTOR2(0.0f, 1.0f);
	pVtx[3].tex = D3DXVECTOR2(1.0f, 1.0f);

	m_Tex = nTex;		//テクスチャ番号を覚える

	//頂点バッファをアンロックする
	m_pVtxBuff->Unlock();

	return S_OK;
}
//============================
//ポリゴンの終了
//============================
void CGage::Uninit(void)
{
	CObject::Release();
}
//============================
//ポリゴンの更新
//============================
void CGage::Update(void)
{
	VERTEX_2D* pVtx;    //頂点情報へのポインタ

	//頂点バッファをロックし、頂点情報へのポインタを取得
	m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);

	if (m_Tex == 0)
	{//テクスチャ1のゲージをライフと直結させる

		//頂点座標の設定
		pVtx[0].pos = D3DXVECTOR3(10.0f, 30.0f, 0.0f);
		pVtx[1].pos = D3DXVECTOR3(m_PosLife.x + 10.0f, 30.0f, 0.0f);
		pVtx[2].pos = D3DXVECTOR3(10.0f, 50.0f, 0.0f);
		pVtx[3].pos = D3DXVECTOR3(m_PosLife.x + 10.0f, 50.0f, 0.0f);
	}

	if (m_Tex == 1)
	{//テクスチャ1のゲージをライフと直結させる

		//頂点座標の設定
		pVtx[0].pos = D3DXVECTOR3(10.0f, 70.0f, 0.0f);
		pVtx[1].pos = D3DXVECTOR3(m_PosBlood.x + 10.0f, 70.0f, 0.0f);
		pVtx[2].pos = D3DXVECTOR3(10.0f, 90.0f, 0.0f);
		pVtx[3].pos = D3DXVECTOR3(m_PosBlood.x + 10.0f, 90.0f, 0.0f);
	}

		//デバッグ表示の情報を渡す
		CDebugProc* pDebug = CManager::GetInstance()->GetDebugProck();

#ifdef _DEBUG
		////カメラの位置をデバッグ表示
		//pDebug->Print("感染ゲージ : %f\n", );
#endif
	

	//頂点バッファをアンロックする
	m_pVtxBuff->Unlock();
}
//============================
//ポリゴンの描画
//============================
void CGage::Draw(void)
{
	//デバイスの取得
	CRenderer* pRenderer = CManager::GetInstance()->GetRenderer();

	LPDIRECT3DDEVICE9 pDevice = pRenderer->GetDevice();

	//頂点バッファをデータストリームに設定
	pDevice->SetStreamSource(0, m_pVtxBuff, 0, sizeof(VERTEX_2D));

	//頂点フォーマットの設定
	pDevice->SetFVF(FVF_VERTEX_2D);

	//テクスチャの設定
	pDevice->SetTexture(0, m_pTexture);

	//αブレンディングを加算合成に設定
	pDevice->SetRenderState(D3DRS_BLENDOP, D3DBLENDOP_ADD);
	pDevice->SetRenderState(D3DRS_SRCBLEND, D3DBLEND_SRCALPHA);
	pDevice->SetRenderState(D3DRS_DESTBLEND, D3DBLEND_ONE);

	//ポリゴンの描画
	pDevice->DrawPrimitive(D3DPT_TRIANGLESTRIP, 0, 2); //プリミティブの種類

	//αブレンディングを元に戻す
	pDevice->SetRenderState(D3DRS_BLENDOP, D3DBLENDOP_ADD);
	pDevice->SetRenderState(D3DRS_SRCBLEND, D3DBLEND_SRCALPHA);
	pDevice->SetRenderState(D3DRS_DESTBLEND, D3DBLEND_INVSRCALPHA);
}

//============================
//体力ゲージの取得
//============================
float CGage::GetGageLife(void)
{
	return m_PosLife.x;
}

//============================
//体力ゲージの設定
//============================
void CGage::SetGageLife(float fLife)
{
	m_PosLife.x = fLife;
}

//============================
//血ゲージの取得
//============================
float CGage::GetGageBlood(void)
{
	return m_PosBlood.x;
}

//============================
//血ゲージの設定
//============================
void CGage::SetGageBlood(float fBlood)
{
	m_PosBlood.x = fBlood;
}

