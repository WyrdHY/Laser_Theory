# THG Power Estimate for Radiator Array

This note estimates the expected third harmonic generation (THG) power from our radiator waveguide array and compares the model prediction with the experimentally measured value.

---

# Laser Parameters (Menlo Source)

The Menlo pulsed laser has the following parameters

- Average power  
- Pulse width  
- Repetition rate  

$$
P_{avg} = 5\,\text{W}
$$

$$
\tau = 7.6154\,\text{ps}
$$

$$
f = 250\,\text{MHz}
$$

The pulse period is

$$
T = \frac{1}{f} = \frac{1}{250\times10^6}
$$

---

# Peak Power Estimation

Average power satisfies

$$
P_{avg} = P_{peak}\times \tau \times f
$$

Therefore

$$
P_{peak}
=
\frac{P_{avg}}{\tau f}
$$

Substituting numbers

$$
P_{peak}
=
\frac{5}{(7.6\times10^{-12})(250\times10^{6})}
\approx 2.63\times10^3\,\text{W}
$$

$$
P_{peak}\approx 2.6\,\text{kW}
$$

---

# On-Chip Peak Power

The chip has approximately(5W avg in, 500mW avg out measured)

$$
\sqrt{10} = 3.16
$$

loss per facet, therefore the on-chip peak power is

$$
P_{on-chip}
=
\frac{2.6\,\text{kW}}{3.16}
$$

$$
P_{on-chip}\approx0.82\,\text{kW}
$$

$$
P_{on-chip}\approx820\,\text{W}
$$

---

# THG Scaling Model

The radiated third harmonic power scales as

$$
P_3 \propto n_2^2 P_1^3
$$

More explicitly

$$
P_3
=
(\text{const})
\frac{n_{1st}}{\lambda_{3rd}^4}
(n_2)^2
(P_{1st})^3
$$

---

# Reference Result

From the old result: 

At **450 nm pump**

- 400 W pump power
- 50 nm Si₃N₄ layer → ~1 nW THG
- 10 nm TiO₂ layer → ~0.4 nW THG

Our device uses approximately 22nm TiO2, therefore we assume approximately

$$
1\,\text{nW per radiator at }450\,\text{nm for 22nm thick TiO2}
$$

as an order-of-magnitude estimate.

---

# Wavelength Scaling

THG radiation contains the factor

$$
\frac{1}{\lambda^4}
$$

Scaling from 450 nm to 1550 nm

$$
\left(\frac{450}{1550}\right)^4
\approx
\frac{1}{3^4}
=
\frac{1}{81}
$$

Assuming n2(450) $\approx$ n2(1550), though this is definitely not true, and we are likely overestimate the power by doing so:

$$
P_{rad}(1550)
=
\frac{1\,\text{nW}}{81}
$$

per radiator.

---

# Model Prediction for Radiator Array

Our waveguide contains 1024 radiators, the THG scaling with pump power is

$$
P_{THG}\propto P^3
$$

Comparing Menlo peak power with the reference case

$$
\frac{820}{400}\approx2
$$

Thus

$$
P_{model}^{menlo}
=
1024
\times
\frac{1\,\text{nW}}{81}
\times
2^3
$$

$$
P_{model}^{menlo}
\approx
100\,\text{nW}
$$

---

# Measured Power

Experimentally we measure

$$
\langle P_{menlo} \rangle
=
0.45\,\text{pW}
$$

This value is averaged over the pulse train.

The duty cycle of the laser is

$$
D
=
\frac{\tau}{T}
=
\frac{7.6\text{ ps}}{1/250\text{ MHz}}
\approx0.19\%
$$

Thus the instantaneous THG power is

$$
P_{menlo}
=
\frac{0.45\,\text{pW}}{0.0019}
$$

$$
P_{menlo}
=
236\,\text{pW}
$$

$$
P_{menlo}\approx0.236\,\text{nW}
$$

---

# Model vs Measurement

Model prediction 100nw

Measured 0.236nw


The ratio is

$$
R
=
\frac{0.236}{100}
$$

In dB

$$
10\log_{10}\left(\frac{100}{0.236}\right)
=
26.27\,\text{dB}
$$

Thus the simple model overestimates the THG power by approximately 26 dB. 

---

# Note

In previous meeting estimate I compared 0.45 pW vs 1.6 nW directly, which ignored

- on-chip power difference
- pulse duty cycle
- scaling assumptions

and therefore was too crude.

---

# Conservative Lower Bound
 
The value 0.1 nW / 64 radiators on the mask is used as a conservative lower bound assuming 400 W pump at 450 nm for the reference experiment. That's why I wrote 1024-1.6nw on the mask.


