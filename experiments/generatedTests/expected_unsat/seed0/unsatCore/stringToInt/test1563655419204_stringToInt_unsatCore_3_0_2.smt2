(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s_fresh () String)
(declare-fun s () String)
(declare-fun result () Int)
(assert (! 
 (let ((?x350 (str.++ "" s)))
 (= ?x350 s_fresh)) :named a1))
(assert (! 
 (let (($x205 (= result (- 1))))
 (let (($x206 (= $x205 true)))
 (let ((?x284 (int.to.str result)))
 (let (($x1695 (= ?x284 s_fresh)))
 (let (($x1693 (forall ((j Int) )(let (($x1665 (or (= (= (str.at s_fresh j) "8") true) (= (= (str.at s_fresh j) "9") true))))
 (let (($x1671 (or (= (= (str.at s_fresh j) "6") true) (or (= (= (str.at s_fresh j) "7") true) $x1665))))
 (let (($x1677 (or (= (= (str.at s_fresh j) "4") true) (or (= (= (str.at s_fresh j) "5") true) $x1671))))
 (let (($x1683 (or (= (= (str.at s_fresh j) "2") true) (or (= (= (str.at s_fresh j) "3") true) $x1677))))
 (let (($x1689 (or (= (= (str.at s_fresh j) "0") true) (or (= (= (str.at s_fresh j) "1") true) $x1683))))
 (=> (and (>= j 0) (< j (str.len s_fresh))) $x1689)))))))
 ))
 (let (($x1625 (= s_fresh "")))
 (let (($x1626 (= $x1625 false)))
 (let (($x1694 (and $x1626 $x1693)))
 (ite $x1694 $x1695 $x206))))))))) :named a2))
(assert (! 
 (let ((?x209 (str.to.int s)))
 (let (($x210 (= ?x209 result)))
 (not $x210))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

