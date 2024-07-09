package reflaxe_godot;

class HxPlayer extends Node3D {
	override function _ready() {
		position = new Vector3(0, 1, 0);
	}

	override function _process(deltaTime: Float) {
		final n3 = "../CameraBase".find(Node3D);
		n3.rotate(new Vector3(0, 1, 0), deltaTime * 2);
	}
}
