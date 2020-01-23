(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_int4 () Int)
(declare-fun tmp_str12_fresh () String)
(declare-fun result () Int)
(declare-fun s () String)
(assert (! 
 (and (= (int.to.str tmp_int4) tmp_str12_fresh) (= (= tmp_int4 8) true)) :named a1))
(assert (! 
 (let (($x207 (= result (- 1))))
 (let (($x208 (= $x207 true)))
 (let ((?x288 (int.to.str result)))
 (let (($x289 (= ?x288 s)))
 (let (($x2144 (forall ((j Int) )(! (let (($x2134 (or (= (= (str.at s j) tmp_str12_fresh) true) (= (= (str.at s j) "9") true))))
 (let (($x263 (= (= (str.at s j) "6") true)))
 (let (($x266 (= (= (str.at s j) "5") true)))
 (let (($x2137 (or $x266 (or $x263 (or (= (= (str.at s j) "7") true) $x2134)))))
 (let (($x269 (= (= (str.at s j) "4") true)))
 (let (($x272 (= (= (str.at s j) "3") true)))
 (let (($x275 (= (= (str.at s j) "2") true)))
 (let (($x278 (= (= (str.at s j) "1") true)))
 (let (($x281 (= (= (str.at s j) "0") true)))
 (let (($x197 (>= j 0)))
 (let (($x284 (and $x197 (< j (str.len s)))))
 (=> $x284 (or $x281 (or $x278 (or $x275 (or $x272 (or $x269 $x2137))))))))))))))))) :pattern ( (str.at s j) )))
 ))
 (let (($x214 (= s "")))
 (let (($x215 (= $x214 false)))
 (ite (and $x215 $x2144) $x289 $x208)))))))) :named a2))
(assert (! 
 (let ((?x211 (str.to.int s)))
 (let (($x212 (= ?x211 result)))
 (not $x212))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE
;tmp_int4 = NO VALUE
;tmp_str12_fresh = 8

;unsat core: a0 a1 a2 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
