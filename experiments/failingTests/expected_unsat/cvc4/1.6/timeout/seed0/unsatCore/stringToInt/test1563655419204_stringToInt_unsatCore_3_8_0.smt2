(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str6 () String)
(declare-fun result () Int)
(declare-fun s () String)
(declare-fun tmp_bool6_fresh () Bool)
(assert (! 
 (= (str.contains tmp_str6 tmp_str6) tmp_bool6_fresh) :named a1))
(assert (! 
 (let ((?x284 (int.to.str result)))
 (let (($x285 (= ?x284 s)))
 (let (($x1933 (forall ((j Int) )(let (($x1915 (or (= (= (str.at s j) "8") tmp_bool6_fresh) (= (= (str.at s j) "9") tmp_bool6_fresh))))
 (let (($x1919 (or (= (= (str.at s j) "6") tmp_bool6_fresh) (or (= (= (str.at s j) "7") tmp_bool6_fresh) $x1915))))
 (let (($x1923 (or (= (= (str.at s j) "4") tmp_bool6_fresh) (or (= (= (str.at s j) "5") tmp_bool6_fresh) $x1919))))
 (let (($x1927 (or (= (= (str.at s j) "2") tmp_bool6_fresh) (or (= (= (str.at s j) "3") tmp_bool6_fresh) $x1923))))
 (let (($x1931 (or (= (= (str.at s j) "0") tmp_bool6_fresh) (or (= (= (str.at s j) "1") tmp_bool6_fresh) $x1927))))
 (let (($x195 (>= j 0)))
 (let (($x280 (and $x195 (< j (str.len s)))))
 (=> $x280 $x1931)))))))))
 ))
 (let (($x212 (= s "")))
 (let (($x213 (= $x212 false)))
 (ite (and $x213 $x1933) $x285 (= (= result (- 1)) tmp_bool6_fresh))))))) :named a2))
(assert (! 
 (let ((?x209 (str.to.int s)))
 (let (($x210 (= ?x209 result)))
 (not $x210))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE
;tmp_str6 = NO VALUE
;tmp_bool6_fresh = true

;unsat core: a0 a1 a2 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
