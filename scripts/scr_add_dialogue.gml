/// scr_add_dialogue(string, [optional: string, string, etc.])

for(i = 0;i<argument_count;i++) {
    ds_list_add(global.dialogueBox.stringList,argument[i]);
}
