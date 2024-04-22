Author : Qosim Ariqoh Daffa

NPM : 2006522820

Source : https://github.com/CSUI-Game-Development/tutorial-7-template

Godot version : 3.5

---

# Latihan: Object interaction

---

# Latihan: Membuat level dengan 3D dengan CSG

## Empty room

## Making 3D object

## Coloring 3D object

## Adding obstacle

## Adding Goal condition

--

# Latihan Mandiri: Pick up item & inventory system

---

# Latihan Mandiri: Sprinting & Crouching

Implementasi yang dilakukan tidak akan berbeda dengan tutorial sebelumnya.

1. Input key _sprint_ (`Shift`) dan _crouch_ (`control`) ditambahkan.

2. Implementasi Input conditional untuk _sprint_ dan _crouch_.

```
func _physics_process(delta):
	///

	var movement_speed = speed

  # speed
	if Input.is_action_pressed("crouch"):
		movement_speed /= 2
	elif Input.is_action_pressed("sprint"):
		movement_speed *= 2

  # collision and camera position
	if Input.is_action_pressed("crouch"):
		$Head.translation.y = 0.5
		$CollisionShape.scale.z = 0.5
		$MeshInstance.scale.z = 0.5
	else:
		$Head.translation.y = 1
		$CollisionShape.scale.z = 1
		$MeshInstance.scale.z = 1

	velocity = velocity.linear_interpolate(movement_vector * movement_speed, acceleration * delta)
	velocity.y -= gravity

	///
```

Setelah dilakukan langkah diatas, `Player` sudah dapat melakukan _sprint_ dan _crouch_.
