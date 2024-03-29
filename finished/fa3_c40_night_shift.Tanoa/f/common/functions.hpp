// F3 Functions

class F // Defines the "owner"
{
	class common // category
	{
		file = "f\common";
		class processParamsArray{preInit = 1; postInit=1;};
		class nearPlayer{};
	};
	class mpEnd
	{
		file = "f\mpEnd";
		class mpEnd{};
		class mpEndReceiver{};
	};
	class assignGear
	{
		file = "f\assignGear";
		class assignGear{};
	};
	class setGroupID
	{
		file = "f\setGroupID";
		class setGroupID{};
	};
	class missionConditions
	{
		file = "f\missionConditions";
		class SetTime{};
		class SetFog{};
		class SetWeather{};
		class SetWind{};
	};
	class groupMarkers {
		file = "f\groupMarkers";
		class localGroupMarker{};
		class localSpecialistMarker{};
	};
	class FTMemberMarkers
	{
		file = "f\FTMemberMarkers";
		class SetLocalFTMemberMarkers{};
		class GetMarkerColor{};
		class LocalFTMarkerSync{};
	};
	class setAISkill
	{
		file = "f\setAISKill";
		class setAISKill{};
	};
	class nametag
	{
		file = "f\nametag";
		class drawNameTag{};
	};
	class zeus
	{
		file = "f\zeus";
		class zeusInit{};
		class zeusAddAddons{};
		class zeusAddObjects{};
	};
	class safeStart
	{
		file = "f\safeStart";
		class safety{};
	};
	class woundingsystem
	{
		file = "f\simplewoundingsystem";
		class SetDowned {};
		class WoundedEffect{};
		class HasWounded{};
		class EjectWounded{};
		class OnDrag{};
		class LifeTick {};
		class OnDeath {};
		class OnHeal {};
		class OnDamage{};
		class SetBleeding{};
		class GetAnimation{};
	};
	class fspectator
	{
		file = "f\spect";
		class CamInit{};
		class OnUnload{};
		class DrawTags{};
		class EventHandler{};
		class FreeCam{};
		class GetPlayers{};
		class ReloadModes{};
		class UpdateValues{};
		class HandleCamera{};
		class ToggleGUI{};
		class OnMapClick{};
		class DrawMarkers{};
		class ForceExit{};
		class HandleMenu{};
		class showMenu{};
	};
};
