update creature_template set ScriptName='npc_GossipIntroOutro' where entry=84782;
update creature_template set ScriptName='npc_GossipIntroOutro' where entry=82376;
UPDATE creature SET spawntimesecs=7200 where map=1209;
UPDATE gameobject_template SET data1=234164 where entry=234164;

DELETE FROM creature WHERE id=76309;
DELETE FROM creature WHERE id=76307;
DELETE FROM creature WHERE id=76310;
DELETE FROM creature WHERE id=76146;
DELETE FROM creature WHERE id=76306;

UPDATE creature_template SET flags_extra = flags_extra | 128 WHERE entry IN (77347, 76152, 76119);
UPDATE creature_template SET faction=16 WHERE entry=76292;

INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `bytes2`, `emote`) VALUES((select guid from creature where id=84782), 57164, 50331648, 1, 0) ;
