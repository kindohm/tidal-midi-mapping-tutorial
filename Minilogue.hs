module Minilogue where

import Sound.Tidal.Params
import Sound.Tidal.MIDI.Control

-- Minilogue
-- filter cutoff: MIDI CC 11
-- noise: MIDI CC 1
-- crossmod: MIDI CC 9

(noise, noise_p) = pF "noise" (Just 0)
(crossmod, crossmod_p) = pF "crossmod" (Just 0)

minilogueController :: ControllerShape
minilogueController = ControllerShape {
  controls = [
    mCC cutoff_p 11,
    mCC noise_p 1,
    mCC crossmod_p 9
  ],
  latency = 0.1 }

shape = toShape minilogueController
