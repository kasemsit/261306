
# ตัวแปรสุ่ม

(sec:expectation_cont)=
## ค่าคาดหมาย

นิยามของค่าคาดหมาย (Expectation) $\expected{X}$ ของตัวแปรสุ่ม $X$ เป็นดังนี้

````{prf:definition} ค่าคาดหมาย
:label: def:expectation_lebesqe

กำหนด{term}`แซมเปิลสเปซ` $\Omega$ และตัวแปรสุ่ม $X(\omega)$ ที่มี\gls{t:probability_measure} $\prob{\omega}$ จะได้ว่านิยาม{term}`ค่าคาดหมาย`ของตัวแปรสุ่ม $X$ คือ 

$$
\expected{X} = \int_\Omega X(\omega) \, d \prob{\omega}
$$

````

TODO



````{prf:definition} ค่าคาดหมายของตัวแปรสุ่มต่อเนื่อง
:label: def:expected_cont_abs

{term}`ค่าคาดหมาย`ของตัวแปรสุ่ม $X\sim f_X(x)$ มีนิยามคือ 

$$
\expected{X} = \int_{-\infty}^\infty x f_X(x) dx
$$

````






````{prf:example} $\expected{X}$ และ $\variance{X}$ ของ\gls{t:continuous_uniform_distribution}{label=ex:uniform_mean}
จงหา $\expected{X}$ และ $\variance{X}$ ของตัวแปรสุ่ม $X$ ที่มี \glsuseri{t:pdf} ดังต่อไปนี้

```{figure} fig/uniform_pdf_ab.png
---
height: 150px
---

```


````

```{dropdown} วิธีทำ

1. $\expected{X}$ คำนวณได้จากนิยามของ{term}`ค่าคาดหวัง` ดังนี้

    $$
    \begin{align*}
    \expected{X} &= \int_{-\infty}^\infty x f_X(x) dx = \int_{a}^b x \frac{1}{b-a} dx = \frac{1}{b-a} \frac{x^2}{2} \bigg\rvert_{x=a}^b \\
    &= \frac{1}{2(b-a)} \left( b^2 - a^2 \right) = \frac{1}{2(b-a)} (a-b)(a+b) = \frac{a+b}{2}
    \end{align*}
    $$
2. $\variance{X}$ คำนวณได้จากนิยามของ{term}`ค่าความแปรปรวน` ดังนี้

    $$
    \variance{X} = \expected{ (X - \mu)^2 } 
    $$
    โดยที่ $\mu = \expected{X}$ และจาก $\expected{X} = \frac{a+b}{2}$ นอกจากนี้ การที่ทราบว่า $\variance{X} = \expected{ (X - \mu)^2 } = \expected{X^2} - \mu^2$
    จึงเหลือเพียงคำนวณ $\expected{X^2}$ ดังนี้

    $$  
    \begin{align*}
    \expected{X^2} &= \int_{-\infty}^{\infty} x^2 f_X(x) \; dx \\
    &= \int_{a}^{b} x^2 \frac{1}{b-a} \; dx \\
    &=  \frac{x^3}{3(b-a)} \Big\rvert_{x=a}^b \\
    &= \frac{1}{3(b-a)} \left( b^3 - a^3 \right) \\
    &= \frac{(b-a)(a^2 + ab + b^2)}{3(b-a)} \\
    &= \frac{1}{3}(a^2+ab+b^2) 
    \end{align*}
    $$

    การที่ $\mu^2 = \frac{(a+b)^2}{4}$ จึงได้ว่า

    $$
    \begin{align*}
    \variance{X} &= \expected{X^2} - \mu^2  \\
    &= \frac{1}{3}(a^2+ab+b^2) -\frac{1}{4}(a+b)^2 \\
    &= \frac{1}{12} (4a^2 + 4ab + 4b^2 - 3a^2 -6ab - 3 b^2) \\
    &= \frac{1}{12} (a^2 -2ab + b^2) \\
    &= \frac{1}{12}(b-a)^2 
    \end{align*}
    $$

```