+++
date = '2026-03-09T08:00:40+02:00'
draft = true
title = 'Godot Toon Shading | Tutorial'
tags = ["godot", "tutorial", "shader", "light"]
summary = "A guide for achieving nice toon shading in Godot 4"
+++
One thing almost every game developer has at least come across is toon shading.

## What is toon shading
As the name suggests, toon shading aims for a car**toon**y shading instead of a realistic one.
Maybe that's also why toon shading is a form of [Non-photorealistic rendering](https://en.wikipedia.org/wiki/Non-photorealistic_rendering). 
It's also known as cel shading.

There's no ***one true toon shading***, but usually you'll see a few things:

- Hard shadows
- Defined rim light
- Clear highlights

> [!NOTE] You might see ***outlines*** mentioned, but it's less of a shading thing.

<figure>
    <img src="https://upload.wikimedia.org/wikipedia/commons/8/8a/Celshading_teapot_large.png" alt="toon shading">
    <figcaption>Toon shading image <a href="https://commons.wikimedia.org/wiki/User:NicolasSourd">NicholasSourd</a> (<a href="https://creativecommons.org/licenses/by/2.5/">CC BY 2.5</a>)</figcaption>
</figure>

## Simple Method
The simplest method for toon shading is to use Godot's own **StandardMaterial3D**. 

1. Add the **StandardMaterial3D** to object.
2. Open the material and switch it to *toon mode*:
    - **Shading > Diffuse Mode** to **Toon**
    - **Shading > Specular Mode** to **Toon**
3. Drag the **Roughness** of the material to `0.0`
4. **(Optional)**: Enable **Rim > Enabled**

Easy as that. A great benefit for this is you can use all the other things that come with **StandardMaterial3D**.

## Custom Shader
We want full control of our toon shader. 



