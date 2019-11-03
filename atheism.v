(* Proof that a god does not exist *)

(* The god proposition (i.e. "God exists") *)
Inductive God : Prop :=
  (* God can only be constructed by another god *)
  | creator: God -> God.

(* Proof of atheism (i.e. "God does not exist") *)
Theorem atheism :
  ~God.
Proof.
  unfold not.
  intros.
  induction H.
  apply IHGod.
Qed.
