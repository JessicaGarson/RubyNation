live_loop :start do
  synth :pretty_bell
  sample :loop_safari
  sample :bass_hit_c
  sleep 0.25
end

live_loop :second do
  synth :tri
  sleep rand(0.0..1.0)
end

live_loop :drums do
  if one_in(5)
    sample :drum_cymbal_hard
    sleep 0.5
  else
    sample :drum_tom_mid_hard
    sleep 0.7
  end
end

live_loop :distort_all_the_things do
  with_fx :distortion do
    synth :tb303
    sleep 5
  end
end

live_loop :notes do
  use_synth :square
  n = (ring, :a3, :f2, :d2)
  play n
  sleep 0.75
end


live_loop :my_voice do
  sample "/path/to/file.wav", beat_stretch: 3, rate: 0.5
  sleep 5
end
