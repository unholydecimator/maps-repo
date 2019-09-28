library DataStructures initializer ini
    globals
        private hashtable arrayTable
	private constant integer DATA_STRUCTURE_SIZE = 8191
    endglobals

    public module DataStructureMethods
        public method getTableParentId takes nothing returns integer
            return DATA_STRUCTURE_SIZE * (thistype.typeid - 1) + (this - 1)
        endmethod
    endmodule

    public interface IDataStructure
        public method flush takes nothing returns nothing

        public method haveAtIndex takes integer i returns boolean

        public method removeAtIndex takes integer i returns nothing

	public method getCount takes nothing returns integer
    endinterface

    // container text macros
    //! runtextmacro SimpleTypeArray("Integer", "integer")
    //! runtextmacro SimpleTypeArray("Boolean", "boolean")
    //! runtextmacro SimpleTypeArray("Real", "real")
    //! runtextmacro SimpleTypeArrayShort("String", "Str", "string")

    //! runtextmacro HandleTypeArray("Ability", "ability")
    //! runtextmacro DestroyedHandleTypeArray("BooleanExpr", "boolexpr", "DestroyBoolExpr", "true")
    //! runtextmacro HandleTypeArray("Button", "button")
    //! runtextmacro DestroyedHandleTypeArray("DefeatCondition", "defeatcondition", "DestroyDefeatCondition", "true")
    //! runtextmacro DestroyedHandleTypeArray("Destructable", "destructable", "RemoveDestructable", "false")
    //! runtextmacro HandleTypeArray("Dialog", "dialog")
    //! runtextmacro DestroyedHandleTypeArray("Effect", "effect", "DestroyEffect", "true")
    //! runtextmacro DestroyedHandleTypeArray("FogModifier", "fogmodifier", "DestroyFogModifier", "false")
    //! runtextmacro HandleTypeArray("FogState", "fogstate")
    //! runtextmacro DestroyedHandleTypeArray("Force", "force", "DestroyForce", "true")
    //! runtextmacro DestroyedHandleTypeArray("Group", "group", "DestroyGroup", "true")
    //! runtextmacro DestroyedHandleTypeArray("Hashtable", "hashtable", "FlushParentHashtable", "false")
    //! runtextmacro DestroyedHandleTypeArray("Image", "image", "DestroyImage", "true")
    //! runtextmacro DestroyedHandleTypeArray("Item", "item", "RemoveItem", "false")
    //! runtextmacro DestroyedHandleTypeArray("ItemPool", "itempool", "DestroyItemPool", "true")
    //! runtextmacro DestroyedHandleTypeArray("Leaderboard", "leaderboard", "DestroyLeaderboard", "true")
    //! runtextmacro DestroyedHandleTypeArray("Lightning", "lightning", "DestroyLightning", "true")
    //! runtextmacro DestroyedHandleTypeArray("Location", "location", "RemoveLocation", "true")
    //! runtextmacro DestroyedHandleTypeArray("Multiboard", "multiboard", "DestroyMultiboard", "true")
    //! runtextmacro DestroyedHandleTypeArray("MultiboardItem", "multiboarditem", "MultiboardReleaseItem", "true")
    //! runtextmacro HandleTypeArray("Player", "player")
    //! runtextmacro DestroyedHandleTypeArray("Quest", "quest", "DestroyQuest", "true")
    //! runtextmacro HandleTypeArray("QuestItem", "questitem")
    //! runtextmacro DestroyedHandleTypeArray("Rect", "rect", "RemoveRect", "true")
    //! runtextmacro DestroyedHandleTypeArray("Region", "region", "RemoveRegion", "true")
    //! runtextmacro DestroyedHandleTypeArray("Sound", "sound", "KillSoundWhenDone", "true")
    //! runtextmacro DestroyedHandleTypeArray("TextTag", "texttag", "DestroyTextTag", "true")
    //! runtextmacro DestroyedHandleTypeArray("TimerDialog", "timerdialog", "DestroyTimerDialog", "true")
    //! runtextmacro HandleTypeArray("Trackable", "trackable")
    //! runtextmacro HandleTypeArray("TriggerAction", "triggeraction")
    //! runtextmacro HandleTypeArray("TriggerCondition", "triggercondition")
    //! runtextmacro HandleTypeArray("TriggerEvent", "event")
    //! runtextmacro DestroyedHandleTypeArray("Trigger", "trigger", "DestroyTrigger", "true")
    //! runtextmacro DestroyedHandleTypeArray("Ubersplat", "ubersplat", "DestroyUbersplat", "true")
    //! runtextmacro DestroyedHandleTypeArray("Unit", "unit", "RemoveUnit", "false")
    //! runtextmacro DestroyedHandleTypeArray("UnitPool", "unitpool", "DestroyUnitPool", "true")
    //! runtextmacro HandleTypeArray("Widget", "widget")

    //! runtextmacro StructTypeVector("AttackNodes_Node")
    //! runtextmacro StructTypeVector("AttackNodes_NodeVector")

    public struct Struct
    endstruct
    //! runtextmacro StructTypeVector("Struct")

    private function ini takes nothing returns nothing
        set arrayTable = InitHashtable()
    endfunction
endlibrary