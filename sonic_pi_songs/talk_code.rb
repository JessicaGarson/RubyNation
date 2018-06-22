sample "/Users/jessicagarson/Documents/we_are_the_one.wav"

live_loop :start do
  synth :pretty_bell
  sample :loop_safari
  sleep 0.25
end

live_loop :second do
  synth :tri, attack: 0.8
  sleep rand(0.0..1.0)
end

live_loop :drums do
  if one_in(5)
    sample :drum_cymbal_hard, decay: 0.35
    sleep 0.5
  else
    sample :drum_heavy_kick
    sleep 0.7
  end
end

live_loop :distort_everything do
  with_fx :distortion do
    synth :tb303
    sleep 6
  end
end


live_loop :notes do
  use_synth :square
  n = (ring, :a3, :f2, :d2)
  play n
  sleep 0.75
end

live_loop :vagrant_is_fun do
  sample "/Users/jessicagarson/Documents/recordings/vagrant.wav", rate: 0.5, beat_stretch: 0.25
  sleep 7
end
