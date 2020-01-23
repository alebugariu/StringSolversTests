(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str4 () String)
(declare-fun s3 () String)
(declare-fun s2 () String)
(declare-fun s1 () String)
(declare-fun tmp_str5 () String)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (let (($x188 (= (str.indexof (str.++ (str.++ s1 s2) s3) tmp_str4 0) (- 1))))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x126 (str.++ ?x124 s3)))
 (let ((?x591 (str.replace ?x126 tmp_str4 tmp_str5)))
 (let (($x592 (= ?x591 ?x126)))
 (and $x592 $x188)))))) :named a1))
(assert (! 
 (forall ((s1 String) (s2 String) (s3 String) )(! (=> (= (str.++ (str.++ s1 s2) s3) s) (= (= s2 t) false)) :pattern ( (str.++ (str.++ s1 s2) s3) )))
  :named a2))
(assert (! 
 (let (($x1097 (str.contains s t)))
 (let (($x190 (= $x1097 false)))
 (not $x190))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE
;tmp_str4 = NO VALUE
;tmp_str5 = NO VALUE

;unsat core: a0 a2 

;actual status: unsat
