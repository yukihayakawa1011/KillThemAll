//============================
//
//�Q�[�W����(gage.cpp)
//Author:���� �F�M
//
//============================
#include "manager.h"
#include "gage.h"
#include "renderer.h"
#include "debugproc.h"

//============================
//�R���X�g���N�^
//============================
CGage::CGage()
{
	m_Tex = 0;	//�o����e�N�X�`���ԍ��̃N���A
	m_PosLife = D3DXVECTOR3(0.0f, 0.0f, 0.0f);	//�Q�[�W�̏ꏊ�̃N���A
}

//============================
//�f�X�g���N�^
//============================
CGage::~CGage()
{

}

//============================
//��������
//============================
CGage* CGage::Create(D3DXVECTOR3 pos, float fRot, int nTex)
{
	CGage* pGage;

	//�I�u�W�F�N�g2D�̐���
	pGage = NEW_DBG CGage;

	//����������
	pGage->Init(D3DXVECTOR3(pos.x, pos.y, pos.z), fRot, nTex);

	return pGage;
}

//============================
//�|���S���̏�����
//============================
HRESULT CGage::Init(D3DXVECTOR3 pos, float fRot, int nTex)
{
	//�f�o�C�X�̎擾
	CRenderer* pRenderer = CManager::GetInstance()->GetRenderer();
	LPDIRECT3DDEVICE9 pDevice = pRenderer->GetDevice();

	if (nTex == 0)
	{//�e�N�X�`���̓ǂݍ���
		D3DXCreateTextureFromFile(pDevice,
			"data\\TEXTURE\\wall.jpg",
			&m_pTexture);
	}

	if (nTex == 1)
	{//�e�N�X�`���̓ǂݍ���
		D3DXCreateTextureFromFile(pDevice,
			"data\\TEXTURE\\Damage01.png",
			&m_pTexture);
	}

	if (nTex == 2)
	{//�e�N�X�`���̓ǂݍ���
		D3DXCreateTextureFromFile(pDevice,
			"data\\TEXTURE\\parsent.png",
			&m_pTexture);
	}

	//���_�o�b�t�@�̐���
	pDevice->CreateVertexBuffer(sizeof(VERTEX_2D) * 4,
		D3DUSAGE_WRITEONLY,
		FVF_VERTEX_2D,
		D3DPOOL_MANAGED,
		&m_pVtxBuff,
		NULL);

	//���_�o�b�t�@��NULL��������
	if (m_pVtxBuff == NULL)
	{
		return E_FAIL;
	}

	//�e�N�X�`���̃|�C���^��NULL��������
	if (m_pTexture == NULL)
	{
		return E_FAIL;
	}

	VERTEX_2D* pVtx;    //���_���ւ̃|�C���^

	//���_�o�b�t�@�����b�N���A���_���ւ̃|�C���^���擾
	m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);

	if (nTex == 0)
	{
		//���_���W�̐ݒ�
		pVtx[0].pos = D3DXVECTOR3(10.0f, pos.y - 10.0f, 0.0f);
		pVtx[1].pos = D3DXVECTOR3(pos.x + 200.0f, pos.y - 10.0f, 0.0f);
		pVtx[2].pos = D3DXVECTOR3(10.0f, pos.y + 10.0f, 0.0f);
		pVtx[3].pos = D3DXVECTOR3(pos.x + 200.0f, pos.y + 10.0f, 0.0f);

		//���_�J���[�̐ݒ�
		pVtx[0].col = D3DXCOLOR(0.0f, 1.0f, 0.0f, 1.0f);
		pVtx[1].col = D3DXCOLOR(0.0f, 1.0f, 0.0f, 1.0f);
		pVtx[2].col = D3DXCOLOR(0.0f, 1.0f, 0.0f, 1.0f);
		pVtx[3].col = D3DXCOLOR(0.0f, 1.0f, 0.0f, 1.0f);

		m_PosLife = D3DXVECTOR3(200.0f, 0.0f, 0.0f);
	}

	//rhw(�@��)�̐ݒ�
	pVtx[0].rhw = 1.0f;
	pVtx[1].rhw = 1.0f;
	pVtx[2].rhw = 1.0f;
	pVtx[3].rhw = 1.0f;

	if (nTex == 1)
	{
		//���_���W�̐ݒ�
		pVtx[0].pos = D3DXVECTOR3(10.0f, pos.y - 10.0f, 0.0f);
		pVtx[1].pos = D3DXVECTOR3(pos.x + 200.0f, pos.y - 10.0f, 0.0f);
		pVtx[2].pos = D3DXVECTOR3(10.0f, pos.y + 10.0f, 0.0f);
		pVtx[3].pos = D3DXVECTOR3(pos.x + 200.0f, pos.y + 10.0f, 0.0f);

		//���_�J���[�̐ݒ�
		pVtx[0].col = D3DXCOLOR(1.0f, 0.0f, 0.0f, 1.0f);
		pVtx[1].col = D3DXCOLOR(1.0f, 0.0f, 0.0f, 1.0f);
		pVtx[2].col = D3DXCOLOR(1.0f, 0.0f, 0.0f, 1.0f);
		pVtx[3].col = D3DXCOLOR(1.0f, 0.0f, 0.0f, 1.0f);
	}

	if (nTex == 2)
	{
		//���_���W�̐ݒ�
		pVtx[0].pos = D3DXVECTOR3(pos.x - 30.0f, pos.y - 30.0f, 0.0f);
		pVtx[1].pos = D3DXVECTOR3(pos.x + 30.0f, pos.y - 30.0f, 0.0f);
		pVtx[2].pos = D3DXVECTOR3(pos.x - 30.0f, pos.y + 30.0f, 0.0f);
		pVtx[3].pos = D3DXVECTOR3(pos.x + 30.0f, pos.y + 30.0f, 0.0f);

		//���_�J���[�̐ݒ�
		pVtx[0].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
		pVtx[1].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
		pVtx[2].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
		pVtx[3].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);

		SetCol(D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f));
	}

	//�e�N�X�`�����W�̐ݒ�
	pVtx[0].tex = D3DXVECTOR2(0.0f, 0.0f);
	pVtx[1].tex = D3DXVECTOR2(1.0f, 0.0f);
	pVtx[2].tex = D3DXVECTOR2(0.0f, 1.0f);
	pVtx[3].tex = D3DXVECTOR2(1.0f, 1.0f);

	m_Tex = nTex;		//�e�N�X�`���ԍ����o����

	//���_�o�b�t�@���A�����b�N����
	m_pVtxBuff->Unlock();

	return S_OK;
}
//============================
//�|���S���̏I��
//============================
void CGage::Uninit(void)
{
	CObject::Release();
}
//============================
//�|���S���̍X�V
//============================
void CGage::Update(void)
{
	VERTEX_2D* pVtx;    //���_���ւ̃|�C���^

	//���_�o�b�t�@�����b�N���A���_���ւ̃|�C���^���擾
	m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);

	if (m_Tex == 0)
	{//�e�N�X�`��1�̃Q�[�W�����C�t�ƒ���������

		//���_���W�̐ݒ�
		pVtx[0].pos = D3DXVECTOR3(10.0f, 30.0f, 0.0f);
		pVtx[1].pos = D3DXVECTOR3(m_PosLife.x + 10.0f, 30.0f, 0.0f);
		pVtx[2].pos = D3DXVECTOR3(10.0f, 50.0f, 0.0f);
		pVtx[3].pos = D3DXVECTOR3(m_PosLife.x + 10.0f, 50.0f, 0.0f);
	}

	if (m_Tex == 1)
	{//�e�N�X�`��1�̃Q�[�W�����C�t�ƒ���������

		//���_���W�̐ݒ�
		pVtx[0].pos = D3DXVECTOR3(10.0f, 70.0f, 0.0f);
		pVtx[1].pos = D3DXVECTOR3(m_PosBlood.x + 10.0f, 70.0f, 0.0f);
		pVtx[2].pos = D3DXVECTOR3(10.0f, 90.0f, 0.0f);
		pVtx[3].pos = D3DXVECTOR3(m_PosBlood.x + 10.0f, 90.0f, 0.0f);
	}

		//�f�o�b�O�\���̏���n��
		CDebugProc* pDebug = CManager::GetInstance()->GetDebugProck();

#ifdef _DEBUG
		////�J�����̈ʒu���f�o�b�O�\��
		//pDebug->Print("�����Q�[�W : %f\n", );
#endif
	

	//���_�o�b�t�@���A�����b�N����
	m_pVtxBuff->Unlock();
}
//============================
//�|���S���̕`��
//============================
void CGage::Draw(void)
{
	//�f�o�C�X�̎擾
	CRenderer* pRenderer = CManager::GetInstance()->GetRenderer();

	LPDIRECT3DDEVICE9 pDevice = pRenderer->GetDevice();

	//���_�o�b�t�@���f�[�^�X�g���[���ɐݒ�
	pDevice->SetStreamSource(0, m_pVtxBuff, 0, sizeof(VERTEX_2D));

	//���_�t�H�[�}�b�g�̐ݒ�
	pDevice->SetFVF(FVF_VERTEX_2D);

	//�e�N�X�`���̐ݒ�
	pDevice->SetTexture(0, m_pTexture);

	//���u�����f�B���O�����Z�����ɐݒ�
	pDevice->SetRenderState(D3DRS_BLENDOP, D3DBLENDOP_ADD);
	pDevice->SetRenderState(D3DRS_SRCBLEND, D3DBLEND_SRCALPHA);
	pDevice->SetRenderState(D3DRS_DESTBLEND, D3DBLEND_ONE);

	//�|���S���̕`��
	pDevice->DrawPrimitive(D3DPT_TRIANGLESTRIP, 0, 2); //�v���~�e�B�u�̎��

	//���u�����f�B���O�����ɖ߂�
	pDevice->SetRenderState(D3DRS_BLENDOP, D3DBLENDOP_ADD);
	pDevice->SetRenderState(D3DRS_SRCBLEND, D3DBLEND_SRCALPHA);
	pDevice->SetRenderState(D3DRS_DESTBLEND, D3DBLEND_INVSRCALPHA);
}

//============================
//�̗̓Q�[�W�̎擾
//============================
float CGage::GetGageLife(void)
{
	return m_PosLife.x;
}

//============================
//�̗̓Q�[�W�̐ݒ�
//============================
void CGage::SetGageLife(float fLife)
{
	m_PosLife.x = fLife;
}

//============================
//���Q�[�W�̎擾
//============================
float CGage::GetGageBlood(void)
{
	return m_PosBlood.x;
}

//============================
//���Q�[�W�̐ݒ�
//============================
void CGage::SetGageBlood(float fBlood)
{
	m_PosBlood.x = fBlood;
}

