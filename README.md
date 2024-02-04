# Water reflection effect

This project showcases a 2d reflective water effect in the defold game engine.

what's needed to create this effect?

- Capture the active play area and display it mirrored in another part of the screen.
- create a water like shader effect that will be applied to the reflection.
- make the shader effect scroll.

How is that done?

- A render target and render predicate is created in the renderscript for the effect.
- A view of the play area is set when drawing to the render target then reset.
- Custom material with vertex and fragment programs are created and rendertarget texture is bound to it.
- A custom quad is created that has its UV's rotated 180 degrees and is flipped in the U axis to give it the mirrored effect by default so no extra work need's to be done in the shader or the engine.
- Distortion textures red and green channel is used to offset the texels that will be drawn creating the water effect.
- a material constant is created and used in the shader to scroll uv's. go.animate is used to animate the value between 0.0 and 1.0

 That's all. 

Check out [the documentation pages](https://defold.com/learn) for examples, tutorials, manuals and API docs.

Need help? ask questions in [The forum](https://forum.defold.com) and/or join the defold discord server.

---