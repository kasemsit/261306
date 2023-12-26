---
jupytext:
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---

# การแจกแจงแบบฟังก์ชันเลขชี้กำลัง

```{code-cell} ipython3
:tags: [hide-input]


import plotly.graph_objects as go
import numpy as np

# Create figure
fig = go.Figure()

def expon_distribution(lambd, x):
  return lambd*np.exp(-lambd* x)

# Add traces, one for each slider step
lambda_range = np.arange(0, 5+0.1, 0.1)
for step in lambda_range:
    fig.add_trace(
        go.Scatter(
            visible=False,
            line=dict(color="#00CED1", width=1),
            mode='lines',
            name=f"λ = {step}",
            x=np.arange(0, 10+0.01, 0.01),
            y=expon_distribution(step, np.arange(0, 10+0.01, 0.01))))

# Make 10th trace visible
fig.data[10].visible = True

# Create and add slider
steps = []
for i in range(len(fig.data)):
    step = dict(
        method="update",
        args=[{"visible": [False] * len(fig.data)}],
        label=f'{lambda_range[i]:.1f}'
    )
    step["args"][0]["visible"][i] = True  # Toggle i'th trace to "visible"
    steps.append(step)

sliders = [dict(
    active=10,
    currentvalue={"prefix": 'Lambda = '},
    #pad={"t": 4},
    steps=steps
)]

fig.update_layout(
    sliders=sliders,
    yaxis_range=[0,2],
    xaxis_title=r'$x$',
    yaxis_title=r'$f_X(x;\lambda) = \lambda e^{-\lambda x}$',
    margin=dict(l=20, r=20, t=20, b=20),    
)
fig.show()

```