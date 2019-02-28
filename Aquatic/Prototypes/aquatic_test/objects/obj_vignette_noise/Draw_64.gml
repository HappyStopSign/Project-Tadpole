shader_set(shd_vignette_noise);
    shader_set_uniform_f(uni_settings, 1.5, 1.51, noise_strength, 1); //vignette inner circle size, vignette outter circle size, noise strength, noise enable (1 or 0 only).
    shader_set_uniform_f(uni_vignette_colour, 245, 223, 201); //R,G,B - 0 to 255
    draw_surface(application_surface,0,0);
shader_reset();

