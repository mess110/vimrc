# Pixor

Applies a pixel effect to images by shrinking them.
Basically makes pixel art from big crappy drawings.

Install the scripts in the gimp scripts folder, cd to
where your images are and call the script from gimp

Pixor takes 2 params:

* new-scale  - percent size of parent
* pixel-size - size of the pixel

```
cp pixor.scm ~/.gimp-2.8/scripts/
cd /folder/with/src/png
gimp -i -b '(pixor 20 10)'
```

# ExportAllGlb

Export all the objects in a blender file in their separate
glb file, in the blend file directory, applies modifiers and
moves the object to 0, 0, 0

```
blender ../path_to.blend --python export_all_glb.py
```
