{
  "$GMRoom":"v1",
  "%Name":"Room_Intro",
  "creationCodeFile":"",
  "inheritCode":false,
  "inheritCreationOrder":false,
  "inheritLayers":false,
  "instanceCreationOrder":[
    {"name":"inst_601726E8","path":"rooms/Room_Intro/Room_Intro.yy",},
    {"name":"inst_3DA79892","path":"rooms/Room_Intro/Room_Intro.yy",},
  ],
  "isDnd":false,
  "layers":[
    {"$GMRInstanceLayer":"","%Name":"Buttons","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Buttons","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
    {"$GMRInstanceLayer":"","%Name":"Instances","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_601726E8","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_601726E8","objectId":{"name":"obj_scrolling_text","path":"objects/obj_scrolling_text/obj_scrolling_text.yy",},"properties":[
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_scrolling_text","path":"objects/obj_scrolling_text/obj_scrolling_text.yy",},"propertyId":{"name":"scroll_speed","path":"objects/obj_scrolling_text/obj_scrolling_text.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"1.5",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_scrolling_text","path":"objects/obj_scrolling_text/obj_scrolling_text.yy",},"propertyId":{"name":"room_to","path":"objects/obj_scrolling_text/obj_scrolling_text.yy",},"resource":{"name":"Room1","path":"rooms/Room1/Room1.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"Room1",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_scrolling_text","path":"objects/obj_scrolling_text/obj_scrolling_text.yy",},"propertyId":{"name":"line_spacing","path":"objects/obj_scrolling_text/obj_scrolling_text.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"48",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":768.0,"y":352.0,},
        {"$GMRInstance":"v1","%Name":"inst_3DA79892","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_3DA79892","objectId":{"name":"obj_button","path":"objects/obj_button/obj_button.yy",},"properties":[
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_button","path":"objects/obj_button/obj_button.yy",},"propertyId":{"name":"button_text","path":"objects/obj_button/obj_button.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"SKIP",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_button","path":"objects/obj_button/obj_button.yy",},"propertyId":{"name":"centered","path":"objects/obj_button/obj_button.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"False",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_button","path":"objects/obj_button/obj_button.yy",},"propertyId":{"name":"room_to","path":"objects/obj_button/obj_button.yy",},"resource":{"name":"Room1","path":"rooms/Room1/Room1.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"Room1",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":3.25,"scaleY":1.875,"x":1212.0,"y":658.0,},
      ],"layers":[],"name":"Instances","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRBackgroundLayer":"","%Name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":200,"effectEnabled":true,"effectType":"_filter_heathaze","gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Background","properties":[
        {"name":"g_Distort1Speed","type":0,"value":"0.01",},
        {"name":"g_Distort2Speed","type":0,"value":"0.025",},
        {"name":"g_Distort1Scale","type":0,"value":"13.3",},
        {"name":"g_Distort1Scale","type":0,"value":"1.3",},
        {"name":"g_Distort2Scale","type":0,"value":"33.3",},
        {"name":"g_Distort2Scale","type":0,"value":"3.3",},
        {"name":"g_Distort1Amount","type":0,"value":"2",},
        {"name":"g_Distort2Amount","type":0,"value":"4",},
        {"name":"g_ChromaSpreadAmount","type":0,"value":"0.5",},
        {"name":"g_CamOffsetScale","type":0,"value":"1",},
        {"name":"g_DistortTexture","type":2,"value":"_filter_heathaze_noise_sprite",},
      ],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"spr_main_title","path":"sprites/spr_main_title/spr_main_title.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "name":"Room_Intro",
  "parent":{
    "name":"Rooms",
    "path":"folders/Rooms.yy",
  },
  "parentRoom":null,
  "physicsSettings":{
    "inheritPhysicsSettings":false,
    "PhysicsWorld":false,
    "PhysicsWorldGravityX":0.0,
    "PhysicsWorldGravityY":10.0,
    "PhysicsWorldPixToMetres":0.1,
  },
  "resourceType":"GMRoom",
  "resourceVersion":"2.0",
  "roomSettings":{
    "Height":768,
    "inheritRoomSettings":false,
    "persistent":false,
    "Width":1366,
  },
  "sequenceId":null,
  "views":[
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings":{
    "clearDisplayBuffer":true,
    "clearViewBackground":false,
    "enableViews":false,
    "inheritViewSettings":false,
  },
  "volume":1.0,
}