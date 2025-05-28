---
title: Skill-Driven Neurosymbolic State Abstractions
layout: default
---
We consider how to construct state abstractions compatible with a given set of abstract actions, to obtain a well-formed abstract Markov decision process (MDP). Imagine an agent interacting in the environments below using a set of abstract actions (also known as <em>options</em>).
<figure style="width: 80%; margin: auto">
    <video width="100%" loop autoplay muted>
        <source src="images/explore.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>
    <figcaption>
        <b>Figure 1:</b> (Left) A visual maze consisting of five rooms connected by hallways, and the agent is equipped with options to navigate between rooms and hallways. Each room has a different wall texture, allowing the agent to figure out the location. (Right) A two-dimensional gridwalk domain in which the state&mdash;the location&mdash;is observed as MNIST digits.
    </figcaption>
</figure>
Even though there are underlying high-level states in these environments&mdash;the room or the hallway that the agent is in, or its location on the grid&mdash;it's not obvious how to build these abstractions in a principled way so that the resulting representation can be used for efficient decision-making. To support as wide a range of learning algorithms as possible, we target the Bellman equation&mdash;the basis of virtually all value-function-based RL algorithms&mdash;which for evaluating policy $$\pi$$ (over options) at state $$s$$ gives:

$$
V(s) = \sum_{\bar{a}} \pi(\bar{a} \mid s)\mathbb{E}[r + \gamma^\tau V(s')].
$$

We show that if we are given a set of abstract actions, the Bellman equation suggests that abstract states should represent distributions over states in the ground MDP:

$$
    V(\bar{s}) = \sum_{\bar{a}} \bar{\pi}(\bar{a} \mid \bar{s}) \sum_i p_i \left[R(\bar{s}, \bar{a}, \bar{s}'_i) + \gamma^{\bar{\tau}_i} V(\bar{s}'_i) \right].
$$

<em class="parantheses">(see the derivation in the paper)</em>

This is the original Bellman equation applied to abstract states and actions, and is the only equation necessary for computing Bellman updates. Now, the question is, how can we refine these state distributions so that the Markov property holds and $$\bar{\pi}^*$$ operates with minimal value loss? Consider the <em>approximately model-preserving abstractions</em> which states that:

$$
\begin{aligned}
\int_{s'} \left| T(s' \mid s, \bar{a}) - T(s' \mid \bar{s}, \bar{a}) \right| ds' &\leq \epsilon_T, \\\\
\left| R(s, \bar{a}, \bar{s}') - R(\bar{s}, \bar{a}, \bar{s}') \right| &\leq \epsilon_R
\end{aligned}
$$

for any option $$\bar{a}$$, pair $$(\bar{s}, \bar{s}')$$, ground state $$s \sim \bar{s}$$, and $$\epsilon_R, \epsilon_T \geq 0$$ <em class="parantheses">(see details in the paper)</em>. This result shows that we can refine any abstract state for which the above property does not hold until it does. Below is an example of how to achieve this on a chain walk domain where observations are MNIST digits <span class="parantheses">(algorithm provided in the paper)</span>.
<figure style="width: 80%; margin: auto">
    <video width="100%" loop autoplay muted>
        <source src="images/chain-cropped.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>
    <figcaption>
        <b>Figure 2:</b> The algorithm first produces three abstract states based on initiation vectors, then iteratively refines them into six states that recover the underlying state.
    </figcaption>
</figure>

While clustering on raw observations might work as shown above, it can be challenging for high-dimensional and complex observations. A common approach in these cases is to transform the data into a more compact space by using a pre-trained neural net, or explicitly learning a latent space using reconstruction-based objectives. However, representations learned with such methods do not necessarily preserve the Markov property. Therefore, we instead use Markov State Abstractions, a neural method which approximates provably sufficient conditions to recover Markov representations. The following conditions need to be met for a state abstraction $$\phi$$ to retain the Markov property:
<ol>
    <li> Inverse models are equal: $$I^{\pi}(a \mid \phi(s), \phi(s')) = I^{\pi}(a \mid s, s').$$</li>
    <li> Next-state density ratios are equal when conditioned on the abstract state: $$\frac{p^{\pi}(\phi(s') \mid \phi(s))}{p^{\pi}(\phi(s'))} = \frac{p^{\pi}(s' \mid \phi(s))}{p^{\pi}(s')}.$$</li>
</ol>

The result is a framework for constructing abstract MDPs built upon principled theoretical approaches with the power of neural nets.

<figure style="width: 100%; margin: auto">
    <video width="100%" controls>
        <source src="images/main.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>
    <figcaption>
        <b>Figure 3:</b> The agent collects high-dimensional observations. MSA representations&mdash;in this case, we set them to 2-dimensional vectors&mdash;are learned through these transitions. Then, abstract states are constructed and iteratively refined until the desired threshold is met. The result is an abstract MDP, constructed in a principled way while leveraging the power of neural nets. Planning can now take place over this abstract MDP using planners ranging from value iteration to classical planners
    </figcaption>
</figure>

<em class="parantheses" style="text-align: center">The content on this page is sourced from the original paper.</em>
