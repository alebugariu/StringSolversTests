(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str17 () String)
(declare-fun tmp_str16 () String)
(declare-fun tmp_int16_fresh () Int)
(declare-fun tmp_int18 () Int)
(declare-fun result () Int)
(declare-fun s () String)
(assert (! 
 (let ((?x2174 (str.indexof tmp_str16 tmp_str17 tmp_int18)))
 (let (($x2176 (= ?x2174 tmp_int16_fresh)))
 (and $x2176 (= (str.contains tmp_str16 tmp_str17) false)))) :named a1))
(assert (! 
 (let (($x2181 (= result tmp_int16_fresh)))
 (let (($x2182 (= $x2181 true)))
 (let ((?x284 (int.to.str result)))
 (let (($x285 (= ?x284 s)))
 (let (($x282 (forall ((j Int) )(let (($x254 (or (= (= (str.at s j) "8") true) (= (= (str.at s j) "9") true))))
 (let (($x256 (= (= (str.at s j) "7") true)))
 (let (($x259 (= (= (str.at s j) "6") true)))
 (let (($x262 (= (= (str.at s j) "5") true)))
 (let (($x265 (= (= (str.at s j) "4") true)))
 (let (($x268 (= (= (str.at s j) "3") true)))
 (let (($x271 (= (= (str.at s j) "2") true)))
 (let (($x274 (= (= (str.at s j) "1") true)))
 (let (($x275 (or $x274 (or $x271 (or $x268 (or $x265 (or $x262 (or $x259 (or $x256 $x254)))))))))
 (let (($x277 (= (= (str.at s j) "0") true)))
 (let (($x195 (>= j 0)))
 (let (($x280 (and $x195 (< j (str.len s)))))
 (=> $x280 (or $x277 $x275)))))))))))))))
 ))
 (let (($x212 (= s "")))
 (let (($x213 (= $x212 false)))
 (let (($x283 (and $x213 $x282)))
 (ite $x283 $x285 $x2182))))))))) :named a2))
(assert (! 
 (let ((?x209 (str.to.int s)))
 (let (($x210 (= ?x209 result)))
 (not $x210))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE
;tmp_str16 = NO VALUE
;tmp_str17 = NO VALUE
;tmp_int18 = NO VALUE
;tmp_int16_fresh = -1

;unsat core: a0 a1 a2 

;actual status: timeout
