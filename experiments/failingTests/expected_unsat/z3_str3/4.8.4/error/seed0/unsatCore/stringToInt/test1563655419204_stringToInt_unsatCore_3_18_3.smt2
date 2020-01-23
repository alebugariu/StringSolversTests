(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_int17 () Int)
(declare-fun tmp_str16 () String)
(declare-fun tmp_int16_fresh () Int)
(declare-fun result () Int)
(declare-fun s () String)
(assert (! 
 (let (($x2216 (and (= (= (str.at tmp_str16 tmp_int17) "8") false) (= (= (str.at tmp_str16 tmp_int17) "9") false))))
 (let (($x2218 (and (= (= (str.at tmp_str16 tmp_int17) "6") false) (and (= (= (str.at tmp_str16 tmp_int17) "7") false) $x2216))))
 (let (($x2220 (and (= (= (str.at tmp_str16 tmp_int17) "4") false) (and (= (= (str.at tmp_str16 tmp_int17) "5") false) $x2218))))
 (let (($x2222 (and (= (= (str.at tmp_str16 tmp_int17) "2") false) (and (= (= (str.at tmp_str16 tmp_int17) "3") false) $x2220))))
 (let (($x2224 (and (= (= (str.at tmp_str16 tmp_int17) "0") false) (and (= (= (str.at tmp_str16 tmp_int17) "1") false) $x2222))))
 (let (($x2225 (and (and (>= tmp_int17 0) (< tmp_int17 (str.len tmp_str16))) $x2224)))
 (let ((?x2187 (str.to.int tmp_str16)))
 (let (($x2188 (= ?x2187 tmp_int16_fresh)))
 (and $x2188 $x2225))))))))) :named a1))
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
;tmp_int17 = NO VALUE
;tmp_int16_fresh = -1

;unsat core: a0 a1 a2 

;actual status: not_implemented
