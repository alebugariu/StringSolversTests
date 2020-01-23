(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_int12 () Int)
(declare-fun tmp_str12_fresh () String)
(declare-fun result () Int)
(declare-fun s () String)
(assert (! 
 (let (($x781 (= tmp_int12 6)))
 (let (($x782 (= $x781 true)))
 (let ((?x778 (int.to.str tmp_int12)))
 (let (($x780 (= ?x778 tmp_str12_fresh)))
 (and $x780 $x782))))) :named a1))
(assert (! 
 (let (($x205 (= result (- 1))))
 (let (($x206 (= $x205 true)))
 (let ((?x284 (int.to.str result)))
 (let (($x285 (= ?x284 s)))
 (let (($x2076 (forall ((j Int) )(let (($x254 (or (= (= (str.at s j) "8") true) (= (= (str.at s j) "9") true))))
 (let (($x2068 (or (= (= (str.at s j) tmp_str12_fresh) true) (or (= (= (str.at s j) "7") true) $x254))))
 (let (($x265 (= (= (str.at s j) "4") true)))
 (let (($x268 (= (= (str.at s j) "3") true)))
 (let (($x2071 (or $x268 (or $x265 (or (= (= (str.at s j) "5") true) $x2068)))))
 (let (($x271 (= (= (str.at s j) "2") true)))
 (let (($x274 (= (= (str.at s j) "1") true)))
 (let (($x277 (= (= (str.at s j) "0") true)))
 (let (($x195 (>= j 0)))
 (let (($x280 (and $x195 (< j (str.len s)))))
 (=> $x280 (or $x277 (or $x274 (or $x271 $x2071)))))))))))))))
 ))
 (let (($x212 (= s "")))
 (let (($x213 (= $x212 false)))
 (ite (and $x213 $x2076) $x285 $x206)))))))) :named a2))
(assert (! 
 (let ((?x209 (str.to.int s)))
 (let (($x210 (= ?x209 result)))
 (not $x210))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE
;tmp_int12 = NO VALUE
;tmp_str12_fresh = 6

;unsat core: a0 a1 a2 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
