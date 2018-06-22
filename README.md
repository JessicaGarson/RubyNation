# RubyNation
How I learned Ruby By Becoming a Live Coding DJ

## What is Sonic Pi?
Sonic Pi is an IDE that allows you write ruby code that allows you to interact with your computer as if it was a synth. Sonic Pi is a wrapper for another language called super collider.

## Where to download
You can grab Sonic Pi [here](https://sonic-pi.net/)

## The coolest part of Sonic Pi
The documentation is in the IDE for you.

## Basic syntax of a loop
The loops you are creating will typically loop like this.

```ruby
live_loop :name_your_loop do
  synth :name_of_synth
  sleep number
end
```

## Our first loop
We'll type this into the buffer.

```ruby
live_loop :lets_start do
  synth :pretty_bell
  sleep 0.25
end
```

## Now let's add in a sample
To the same sample let's add in a sample so this runs at the same timing.
```ruby
live_loop :lets_start do
  synth :pretty_bell
  sample :loop_safari
  sleep 0.25
end
```

## Let's make it random
We can add in another synth with a random element for timing.

```ruby
live_loop :second do
  synth :tri
  sleep rand(0.0..1.0)
end
```

## Let's add another loop for drum sounds
We'll be using an if else statement to add some drum samples into our song.

```ruby
live_loop :drums do
  if one_in(5)
    sample :drum_cymbal_hard
    sleep 0.5
  else
    sample :drum_tom_mid_hard
    sleep 0.7
  end
end
```

## Adding in a melody
You can set the notes to add in.

```ruby
live_loop :notes do
  use_synth :square
  n = (ring, :a3, :f2, :d2)
  play n
  sleep 0.75
end
```

## Working with samples
We'll add this loop to the top of our song.

```ruby
live_loop :sample_voice do
  sample "/path/to/file.wav"
  sleep 5
end
```

## Let's adjust the Rate and Beat_Stretch of this sample

We'll tweak this loop to create a strange effect.
```ruby
live_loop :sample_voice do
  sample "/path/to/file.wav", beat_stretch: 3, rate: 0.5
  sleep 5
end
```
- Rate means the rate to play back. The default is 1. Playing the sample at rate 2 will play it back at double the normal speed. When we adjust the rate to 0.5 we slow it down.

- Beat_Stretch allows us to stretch or shrink the sample to match the number of beats

## Adding in effects
If we wanted to add in distortion we can add in this way.
```ruby
live_loop :distort_all_the_things do
  with_fx :distortion do
    synth :tb303
    sleep 5
  end
end
```

## Attack and decay
- Attack is the portion of the envelope that represents the time taken for the amplitude to reach its maximum level. Essentially it is the initial build up of a sound.
- Decay is the progressive reduction in amplitude of a sound over time. The decay phase starts as soon as the attack phase has reached its peak. In the decay phase, the signal level drops until it reaches the sustain level.

## If you want to download audio files of me screaming
[You can download audio files used in this presentation](https://www.dropbox.com/sh/pwbg35vpq0r3bi4/AACVf9cxF_9P6LLPAs4-a6gTa?dl=0)

## I wrote about this for the Twilio blog
[Here is a blog post I wrote on the topic](https://www.twilio.com/blog/2018/05/generating-music-with-sonic-pi-and-ruby.html)

## I hope you make really cool music
Please let me know what you build.
- Twitter - @JessicaGarson
- Email - Jessica.Garson@gmail.com
