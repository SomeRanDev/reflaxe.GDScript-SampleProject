package reflaxe_godot;

import haxe.macro.MacroStringTools;
import haxe.macro.Expr;

/**
	A static extension for `String` that calls `get_node` to load and cast a `godot.Node`.

	```haxe
	final my3DNode = "path/to/node".find(Node3D);
	```
**/
macro function find(name: ExprOf<String>, nodeType: Expr) {
	final exprString = haxe.macro.ExprTools.toString(nodeType);
	final ct = haxe.macro.MacroStringTools.toComplex(exprString);
	return macro cast(get_node(new NodePath($name)), $ct);
}
