import bpy
import os
from time import sleep

def clear_selection():
    for obj in bpy.context.scene.objects:
        obj.select = False

def export_all_fbx():
    filepath = bpy.data.filepath
    outputFolder = os.path.dirname(filepath)

    objects = bpy.data.objects
    for object in objects:
        clear_selection()
        object.select = True
        object.location = (0, 0, 0)
        exportPath = "%s/%s.glb" % (outputFolder, object.name)
        bpy.ops.export_scene.glb(filepath=exportPath,
                                 export_selected=True,
                                 export_apply=True)

export_all_fbx()
bpy.ops.wm.quit_blender()
