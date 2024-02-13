//============================
//
//�Q�[�W����(gage.h)
//Author:���� �F�M
//
//============================
#ifndef _GAGE_H_   //���̃}�N����`������Ă��Ȃ�������
#define _GAGE_H_   //2�d�C���N���[�h�h�~�̃}�N�����`����
#include "main.h"
#include "object2D.h"

//�}�N����`


//�Q�[�W�̃N���X��`
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
	int m_Tex;		//�e�N�X�`���ԍ����o����
	D3DXVECTOR3 m_PosLife; //�Q�[�W�̏ꏊ
	D3DXVECTOR3 m_PosBlood; //�Q�[�W�̏ꏊ

};


#endif

