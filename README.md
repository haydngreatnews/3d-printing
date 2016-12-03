# 3D Printing
Sources and STLs for some of the things I've designed and printed.

Most things I've designed have been modelled with [OpenSCAD](https://github.com/openscad/openscad), which means I can release these sources, but isn't the easiest to understand or build complex things with.

Links below link to the STL files, which github kindly supplies nice previews of - the same filename with a '.scad' instead of a '.stl' is the matching source file.

# Descriptions
## [3M Screw Hanger](3m-screw-hanger.stl)
A fairly well parameterized adapter for things that only have screw-head mount holes, so that they can be mounted with "3M Command Strips".

This comes from my frustration with not being able to make holes in my walls to hang these things the obvious way.

The [3m-mikrotik-hanger-pin](3m-mikrotik-hanger-pin.stl) model is an example of this, made to fit the [Mikrotik Routerboard RB951G-2HnD](https://routerboard.com/RB951G-2HnD) which has pretty small mount holes.

## [Beauty Blender Holder](beauty-blender-holder.stl)
A stand for 1 large and 4 small [Beauty Blenders](http://www.beautyblender.com) and the solid bar-style cleanser

## [Fan Adapter](custom-fan-adapter.stl)
A pretty hacky job at making a fan adapter that would fit in the heatsink of a machine I run - it needed to be squished a little, and have the sides cut out. Based on the 80mm to 60mm fan adapter from [this set](http://www.thingiverse.com/thing:21112).

Probably not useful to most other people, but a reasonable example of altering an STL file from OpenSCAD. Designed to fit an 80mm fan into the CPU heatsink on the [Gigabyte GA-E350N](http://www.gigabyte.us/products/product-page.aspx?pid=4264#ov) out of desperation.

## [Kindle Light Cover](kindle-light-cover.stl)
A not-hugely-successful attempt at making a red filter to fit over the LED light on the [Kindle Touch Leather Cover](https://www.amazon.com/dp/B004SD23SW). It does fit, and it mostly worked (when printed in red PLA), but it had to be removed any time the light was stowed in the case.

## [Magnetic Pin](magnetic-pin.stl)
A pin shaped fridge magnet design, made to match some neodymium magnets I'd picked up from ebay or somewhere. Simply print, and glue in the magnet, for a nice strong fridge magnet - good enough to hold up quite a lot of kids drawings, or whatever.

## [Pop Stand](PopStand.stl)
A basic design to replace the clear stands that come with some Pop! Vinyl figures - we lost a few, but this is a reasonable replacement when it prints well.

Note that the pin on these printed too quickly on my printer and so each layer didn't cool, leading to an unusable result. For me, printing 2 or 3 of these at a time fixed this, at the cost of some tracks being left from the head lifts. Better workpiece cooling than my Prusa i3 would probably resolve this though.

## [Round Glasses](round-glasses.stl)
A pair of rounded glasses, made to an approximate fit for the head of a Pop! Vinyl figure.

The source for this is a bit ugly, as the lens shape is generated in Inkscape using the "Paths to OpenSCAD" plugin.

## [4G Router Shelf](huawei-4g-shelf.stl)
A shelf to make it a little easier to wall-mount a [Huawei LTE CPE B315](http://consumer.huawei.com/en/smart-home/lte-router/features/b315-en.htm) which uses 3 of the above-mentioned 3M strips to attach to the wall.

This is a larger object and needed to be printed diagonally on my print bed.

## [Square Glasses](square-glasses.stl)
A pair rectangular glasses, made to be an approximate fit for the head of a Pop! Vinyl figure.

## [Wix Hat](wix-hat.stl)
A reasonably complex hat, designed for a Pop! Vinyl figure. I'm reasonably proud of this, but it's pretty slow to render, thanks to some operations that OpenSCAD struggles with (and also wanting a high "fineness").

Thanks to the very low tip on this shape, that is seperate from everything else at it's height, it is necessary to print this with support for (at least) that portion of the shape.

The [hollow brim file](wix-hat-hollowbrim.stl) is the same hat, but with a large void on the bottom face, so as to sit on a head better. It makes a fairly big difference, in my experience, but did need to be printed with some support structure in that void.

