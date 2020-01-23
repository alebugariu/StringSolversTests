(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str3 () String)
(declare-fun result () Int)
(declare-fun s () String)
(declare-fun tmp_bool5_fresh () Bool)
(assert (! 
 (let (($x1228 (str.prefixof "" tmp_str3)))
 (= $x1228 tmp_bool5_fresh)) :named a1))
(assert (! 
 (let (($x207 (= result (- 1))))
 (let (($x1949 (= $x207 tmp_bool5_fresh)))
 (let ((?x288 (int.to.str result)))
 (let (($x289 (= ?x288 s)))
 (let (($x1947 (forall ((j Int) )(! (let (($x1929 (or (= (= (str.at s j) "8") tmp_bool5_fresh) (= (= (str.at s j) "9") tmp_bool5_fresh))))
 (let (($x1933 (or (= (= (str.at s j) "6") tmp_bool5_fresh) (or (= (= (str.at s j) "7") tmp_bool5_fresh) $x1929))))
 (let (($x1937 (or (= (= (str.at s j) "4") tmp_bool5_fresh) (or (= (= (str.at s j) "5") tmp_bool5_fresh) $x1933))))
 (let (($x1941 (or (= (= (str.at s j) "2") tmp_bool5_fresh) (or (= (= (str.at s j) "3") tmp_bool5_fresh) $x1937))))
 (let (($x1945 (or (= (= (str.at s j) "0") tmp_bool5_fresh) (or (= (= (str.at s j) "1") tmp_bool5_fresh) $x1941))))
 (let (($x197 (>= j 0)))
 (let (($x284 (and $x197 (< j (str.len s)))))
 (=> $x284 $x1945)))))))) :pattern ( (str.at s j) )))
 ))
 (let (($x214 (= s "")))
 (let (($x215 (= $x214 false)))
 (let (($x1948 (and $x215 $x1947)))
 (ite $x1948 $x289 $x1949))))))))) :named a2))
(assert (! 
 (let ((?x211 (str.to.int s)))
 (let (($x212 (= ?x211 result)))
 (not $x212))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE
;tmp_str3 = NO VALUE
;tmp_bool5_fresh = true

;unsat core: a0 a1 a2 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
