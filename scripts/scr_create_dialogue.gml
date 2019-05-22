///scr_create_dialogue([optional: string, string, etc.])

global.dialogueBox = instance_create(0,0,obj_dialogue_box);

global.dialogueBox.stringList = ds_list_create();

if(argument_count > 0)
{
    global.dialogueBox.stringTarget = argument[0];
    for(i = 0;i<argument_count;i++)
    {
        ds_list_add(global.dialogueBox.stringList,argument[i]);
    }
}
else
{
    global.dialogueBox.stringTarget = "";
}
