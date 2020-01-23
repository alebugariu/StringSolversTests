(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_int15 () Int)
(declare-fun tmp_str15_fresh () String)
(declare-fun result () Int)
(declare-fun s () String)
(assert (! 
 (let (($x885 (= tmp_int15 9)))
 (let (($x886 (= $x885 true)))
 (and (= (int.to.str tmp_int15) tmp_str15_fresh) $x886))) :named a1))
(assert (! 
 (let (($x205 (= result (- 1))))
 (let (($x206 (= $x205 true)))
 (let ((?x284 (int.to.str result)))
 (let (($x285 (= ?x284 s)))
 (let (($x2170 (forall ((j Int) )(let (($x2160 (or (= (= (str.at s j) "8") true) (= (= (str.at s j) tmp_str15_fresh) true))))
 (let (($x256 (= (= (str.at s j) "7") true)))
 (let (($x259 (= (= (str.at s j) "6") true)))
 (let (($x262 (= (= (str.at s j) "5") true)))
 (let (($x265 (= (= (str.at s j) "4") true)))
 (let (($x268 (= (= (str.at s j) "3") true)))
 (let (($x271 (= (= (str.at s j) "2") true)))
 (let (($x274 (= (= (str.at s j) "1") true)))
 (let (($x2167 (or $x274 (or $x271 (or $x268 (or $x265 (or $x262 (or $x259 (or $x256 $x2160)))))))))
 (let (($x277 (= (= (str.at s j) "0") true)))
 (let (($x195 (>= j 0)))
 (let (($x280 (and $x195 (< j (str.len s)))))
 (=> $x280 (or $x277 $x2167)))))))))))))))
 ))
 (let (($x212 (= s "")))
 (let (($x213 (= $x212 false)))
 (ite (and $x213 $x2170) $x285 $x206)))))))) :named a2))
(assert (! 
 (let ((?x209 (str.to.int s)))
 (let (($x210 (= ?x209 result)))
 (not $x210))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE
;tmp_int15 = NO VALUE
;tmp_str15_fresh = 9

;unsat core: a0 a1 a2 

;actual status: timeout
