(* Proof that a god does not exist *)

(* The god proposition (e.g. "God exists") *)
Inductive God : Prop :=
  (* God can only be constructed by another god *)
  | creator: God -> God.

(* Proof of atheism (e.g. "God does not exist") *)
Theorem atheism :
  ~God.
Proof.
  unfold not.
  intros.
  induction H.
  apply IHGod.
Qed.
