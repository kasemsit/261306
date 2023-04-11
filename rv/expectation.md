
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