# GameGodotEngine


![GodotEngine](https://github.com/user-attachments/assets/6377db01-b068-4e9c-ba3a-465a16263f35)



## Diagrama Máquina de Estado do Player
```mermaid
---
title: Máquina de Estados do Player
---
%%{init: {"theme": "hand-drawn"}}%%
stateDiagram-v2
    Idle --> Duck
    Idle --> Walk
    Idle --> Jump

    Duck --> Idle

    Slide --> Walk
    Slide --> Duck

    Walk --> Idle
    Walk --> Fall
    Walk --> Jump
    Walk --> Slide
    
    Jump --> Jump
    Jump --> Fall
    
    Fall --> Idle
    Fall --> Jump
    Fall --> Walk

    Idle --> Duck
    Idle --> Slide

	[*] --> Dead

```
## Diagrama Máquina de Estado do Skeleton
```mermaid
---
title: Máquina de Estados do Skeleton
---
%%{init: {"theme": "hand-drawn"}}%%
stateDiagram-v2
    [*] --> Walk
	[*] --> Dead

```

