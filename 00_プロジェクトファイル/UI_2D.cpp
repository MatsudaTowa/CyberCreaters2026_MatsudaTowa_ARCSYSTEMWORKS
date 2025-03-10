//=============================================
//
//2DUIの表記[UI_2D.h]
//Auther Matsuda Towa
//
//=============================================
#include "UI_2D.h"
#include "manager.h"

//=============================================
//コンストラクタ
//=============================================
CUI_2D::CUI_2D(int nPriority):CObject2D(nPriority),
m_isDraw(true)					//描画するかどうかの変数初期化
{
}

//=============================================
//デストラクタ
//=============================================
CUI_2D::~CUI_2D()
{
}

//=============================================
//初期化
//=============================================
HRESULT CUI_2D::Init()
{
	//親クラスの初期化
	CObject2D::Init();
	return S_OK;
}

//=============================================
//終了
//=============================================
void CUI_2D::Uninit()
{
	//親クラスの終了
	CObject2D::Uninit();
}

//=============================================
//更新
//=============================================
void CUI_2D::Update()
{
	//親クラスの更新
	CObject2D::Update();

#ifdef _DEBUG
	if (CManager::GetInstance()->GetKeyboard()->GetTrigger(DIK_F1))
	{
		//描画するかどうかを切り替える
		m_isDraw = m_isDraw ? false : true;
	}
#endif // _DEBUG
}

//=============================================
//描画
//=============================================
void CUI_2D::Draw()
{
	if (!m_isDraw)
	{//描画しない状態なら
		//関数を抜ける
		return;
	}

	//親クラスの描画
	CObject2D::Draw();
}
