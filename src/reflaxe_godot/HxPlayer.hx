package reflaxe_godot;

class HxPlayer extends Node3D {
	override function _ready() {
		position = Vector3.make(0, 1, 0);
	}

	override function _process(deltaTime: Float) {
		final n3 = "../CameraBase".find(Node3D);
		n3.rotate(Vector3.make(0, 1, 0), deltaTime * 2);
	}
}
