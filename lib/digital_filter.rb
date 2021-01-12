def digital_filter(sound_wave, low_freq = 40, high_freq = 1000)

  new_sound_wave = []

  sound_wave.each do |freq|
    if freq < low_freq
      new_sound_wave << low_freq
    elsif freq > high_freq
      new_sound_wave << high_freq
    else
      new_sound_wave << freq
    end
  end
  return new_sound_wave


end
