(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s_fresh () String)
(declare-fun result () Int)
(assert (! 
 (let ((?x147 (str.len s)))
 (let (($x354 (= ?x147 1)))
 (let ((?x352 (str.at s 0)))
 (let (($x353 (= ?x352 s_fresh)))
 (and $x353 $x354))))) :named a1))
(assert (! 
 (let (($x207 (= result (- 1))))
 (let (($x208 (= $x207 true)))
 (let (($x1710 (forall ((j Int) )(! (let (($x1682 (or (= (= (str.at s_fresh j) "8") true) (= (= (str.at s_fresh j) "9") true))))
 (let (($x1688 (or (= (= (str.at s_fresh j) "6") true) (or (= (= (str.at s_fresh j) "7") true) $x1682))))
 (let (($x1694 (or (= (= (str.at s_fresh j) "4") true) (or (= (= (str.at s_fresh j) "5") true) $x1688))))
 (let (($x1700 (or (= (= (str.at s_fresh j) "2") true) (or (= (= (str.at s_fresh j) "3") true) $x1694))))
 (let (($x1706 (or (= (= (str.at s_fresh j) "0") true) (or (= (= (str.at s_fresh j) "1") true) $x1700))))
 (=> (and (>= j 0) (< j (str.len s_fresh))) $x1706)))))) :pattern ( (str.at s_fresh j) )))
 ))
 (ite (and (= (= s_fresh "") false) $x1710) (= (int.to.str result) s_fresh) $x208)))) :named a2))
(assert (! 
 (let ((?x211 (str.to.int s)))
 (let (($x212 (= ?x211 result)))
 (not $x212))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

