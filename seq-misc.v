Require Import Rbase.
Require Import R_Ifp.

Fixpoint potd_seq (a0 : R) (i : nat) : R
  := match i with
     | O => a0
     | S n => let seq_n := potd_seq a0 n in
              IZR (Int_part seq_n) + frac_part seq_n
     end.

Definition eventually_periodic (seq : (R -> nat -> R)) : Prop
  := forall a0 : R,
    exists start period : nat,
      forall k : nat,
        k >= start -> seq a0 k = seq a0 (k + period).

Theorem seq_eventually_periodic :
  eventually_periodic potd_seq.
Proof.
  unfold eventually_periodic.
  intro a0.
  Search (_ _ /\ _ -> _).
