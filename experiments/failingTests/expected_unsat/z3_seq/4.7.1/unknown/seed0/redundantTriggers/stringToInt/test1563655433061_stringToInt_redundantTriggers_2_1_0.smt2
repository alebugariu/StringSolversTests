(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () Int)
(declare-fun s () String)
(assert (! 
 (let (($x207 (= result (- 1))))
 (let (($x208 (= $x207 true)))
 (let ((?x288 (int.to.str result)))
 (let (($x289 (= ?x288 s)))
 (let (($x1802 (forall ((j_fresh Int) (j Int) (tmp_str18 String) )(! (let (($x1773 (or (= (= (str.at s j_fresh) "8") true) (= (= (str.at s j_fresh) "9") true))))
 (let (($x1779 (or (= (= (str.at s j_fresh) "6") true) (or (= (= (str.at s j_fresh) "7") true) $x1773))))
 (let (($x1785 (or (= (= (str.at s j_fresh) "4") true) (or (= (= (str.at s j_fresh) "5") true) $x1779))))
 (let (($x1791 (or (= (= (str.at s j_fresh) "2") true) (or (= (= (str.at s j_fresh) "3") true) $x1785))))
 (let (($x1797 (or (= (= (str.at s j_fresh) "0") true) (or (= (= (str.at s j_fresh) "1") true) $x1791))))
 (let (($x1454 (=> (and (>= j 0) (<= j (str.len tmp_str18))) (= (str.indexof tmp_str18 "" j) j_fresh))))
 (=> (and $x1454 (and (>= j_fresh 0) (< j_fresh (str.len s)))) $x1797))))))) :pattern ( (str.at s j_fresh) (str.indexof tmp_str18 "" j) )))
 ))
 (let (($x214 (= s "")))
 (let (($x215 (= $x214 false)))
 (ite (and $x215 $x1802) $x289 $x208)))))))) :named a1))
(assert (! 
 (let ((?x211 (str.to.int s)))
 (let (($x212 (= ?x211 result)))
 (not $x212))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE

;unsat core: a0 a1 

;actual status: unknown
;(:reason-unknown "(incomplete (theory seq))")
