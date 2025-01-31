---
title: Skill-Driven Neurosymbolic State Abstractions
layout: default
---
## Extended Results
Refinement process on MNIST chain-walk domain. The algorithm first produces three abstract states based on initiation vectors, then iteratively refines them into six states that recover the underlying state.
<div class="video-container">
    <video width="600" controls style="margin-bottom: 20px;">
        <source src="images/chain-cropped.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>
</div>

When we have factored subgoal options, as each option changes only a subset of state variables, the resulting MDP is also factored. Nine abstract states are constructed based on initiation vectors (four corners, four edges, and a center). Since now abstract states can share factored distributions, a refinement on a single factor possibly refines multiple states.
<div class="video-container">
    <video width="600" controls style="margin-bottom: 20px;">
        <source src="images/grid-cropped.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>
</div>

The refinement progress in Visual Maze. Scattered points with the same color correspond to samples from the same abstract state. After the initial construction based on the initiation vectors, all 'in the middle of the room' states map to a single abstract state, which is iteratively refined into distinct abstract states, each representing a specific area.
<div class="video-container">
    <video width="600" controls style="margin-bottom: 20px;">
        <source src="images/maze-cropped.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>
</div>
