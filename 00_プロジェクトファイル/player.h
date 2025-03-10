//=============================================
//
//3DTemplate[player.h]
//Auther Matsuda Towa
//
//=============================================
#ifndef _player_H_ //これが定義されてないとき

#define _player_H_
#include "main.h"
#include "model_parts.h"
#include "character.h"
#include "reticle.h"
#include"ammo_UI.h"
#include"life_UI.h"
#include "ult_UI.h"
#include "player_behavior.h"
#include "enemy.h"
#include "hit_camera_effect.h"
#include "gun_icon.h"
#include "player_state.h"
#include "ult.h"
#include "smoke_UI.h"
#include "gauge.h"
#include "blink_UI.h"

class CPlayerState;
class CPlayerSliding;
class CPlayerAvoidance;
class CAmmo_UI;
class CUlt_UI;
class CUlt;
class CSmoke_UI;
class CBlink_UI;

//プレイヤークラス
class CPlayer:public CCharacter
{
public:
	static const int NUM_PARTS = 15; //パーツ数
	static const int MAX_KEY = 20; //キー最大数
	static const int PLAYER_LIFE = 150; //体力
	static const int PLAYER_STAMINA = 100; //スタミナ
	static const int AVOIDANCE_COST = 30; //回避アクションのスタミナコスト
	static const int PLAYER_PRIORITY = 8; //描画順

	//モーションの種類の列挙
	typedef enum
	{
		MOTION_NEUTRAL = 0,
		MOTION_MOVE,
		MOTION_ATTACK,
		MOTION_STAN,
		MOTION_MAX,
	}Motion_Type;

	CPlayer(int nPriority = PLAYER_PRIORITY);
	~CPlayer();
	HRESULT Init();
	void Uninit();
	void Update();
	void CanDetectEnemyCollision();
	void Draw();

	//プレイヤー作成
	static CPlayer* Create();

	void Damage(int nDamage); //当たり判定

	void ResetRot(); //方向のリセット

	void ColisionEnemy(); //敵との当たり判定

	void ChangeDamageState(); //TODOキャラクターにまとめろ

	void CheckColisionEnemy(CEnemy* pEnemy, int nPartsCnt, const D3DXVECTOR3& pos, const D3DXVECTOR3& Minpos, const D3DXVECTOR3& Maxpos);

	void Input(); //プレイヤー入力処理

	void ChangePlayerState(CPlayerState* state);

	inline void SetDeathCnt(int DeathCnt)
	{
		m_DeathCnt = DeathCnt;
	}

	inline void SetStamina(int Stamina)
	{
		m_Stamina = Stamina;
	}

	inline void SetSmoke(bool isSmoke)
	{
		m_isSmoke = isSmoke;
	}

	inline void SetBlown(bool isBlown)
	{
		m_isBlown = isBlown;
	}

	inline void SetBlinkCnt(int BlinkCnt)
	{
		m_BlinkCnt = BlinkCnt;
	}

	inline void SetEnemyColision(bool isColision)
	{
		m_isEnemyColision = isColision;
	}

	inline int& GetDeathCnt()
	{
		return m_DeathCnt;
	}

	inline int& GetStamina()
	{
		return m_Stamina;
	}

	inline int& GetBlinkCnt()
	{
		return m_BlinkCnt;
	}

	inline bool& GetSmoke()
	{
		return m_isSmoke;
	}

	inline bool& GetBlown()
	{
		return m_isBlown;
	}

	inline bool& GetEnemyColision()
	{
		return m_isEnemyColision;
	}
	CReticle* m_Raticle;

	CUlt* m_pUlt;

	CPlayerSliding* m_pSliding;

	CPlayerState* m_pPlayerState;

	CPlayerAvoidance* m_pAvoidance;
private:

	static const D3DXVECTOR3 PLAYER_SPAWN_POS; //スポーン位置
	static const D3DXVECTOR3 PLAYER_SPAWN_ROT; //スポーン方向

	//プレイヤーの移動関連
	static const int IGNORE_COLLISION_FRAME = 150; //当たり判定無視フレーム
	static const int SMOKE_RECAST_FRAME = 900; //スモーク復活フレーム
	static const int DEFAULT_AR_RELOAD_FRAME = 90; //デフォルトのアサルトのリロードフレーム数
	static const int STAN_FRAME = 120; //スタンフレーム数
	static const int DEFAULT_AR_DAMAGE = 10; //デフォルトのアサルトのダメージ
	static const int STAMINA_RECOVERY = 1; //スタミナ回復数値
	static const int STAMINA_RECOVERY_FRAME = 5; //スタミナがSTAMINA_RECOVERY分回復するまでのフレーム数
	static const int DAMAGE_FRAME = 30; //ダメージフレーム

	static constexpr float DEADZONE_Y = -100.0f; //これを過ぎたらプレイヤー破棄
	static constexpr float RETICLE_CORRECTION_VALUE = 16.0f; //レティクルのY座標補正
	static constexpr float SMOKE_CORRECTION_VALUE = 50.0f; //スモークを射出する際の補正値
	static constexpr float SMOKE_SHOT_SPEED = 20.0f; //スモークを射出するスピード

	static const D3DXVECTOR3 SHADOW_SIZE; //影のサイズ
	static const D3DXVECTOR3 STAMINA_GAUGE_SIZE; //スタミナのサイズ
	static const D3DXVECTOR3 GUN_UI_POS;//銃のUIの位置
	static const D3DXVECTOR2 GUN_UI_SIZE;//銃のUIのサイズ

	void SetUI(); //UI設定
	void ReSpawn(); //リスポーン
	static CAmmo_UI* m_pAmmoUI;
	static CLife_UI* m_pLifeUI;

	CUlt_UI* m_pUltUI;
	CSmoke_UI* m_pSmokeUI;
	CBlink_UI* m_pBlinkUI;

	CGauge_3D* m_pStaminaGauge;

	CGunIcon* m_pGunIcon;

	CHitCameraEffect* m_pHitCameraEffect;

	void DebugPos();

	int m_IgnoreColisionCnt;

	int m_SmokeRecastCnt;

	int m_DeathCnt; //死亡数

	int m_Stamina; //スタミナ

	int m_BlinkCnt; //ブリンク回数

	int m_StaminaRecoveryCnt; //スタミナ回復カウント

	bool m_isEnemyColision; //エネミーとの判定をとるか

	bool m_isRelorad; //リロードするかどうか

	bool m_isSmoke; //スモークを使ったか

	bool m_isBlown; //スモークを使ったか
};
#endif