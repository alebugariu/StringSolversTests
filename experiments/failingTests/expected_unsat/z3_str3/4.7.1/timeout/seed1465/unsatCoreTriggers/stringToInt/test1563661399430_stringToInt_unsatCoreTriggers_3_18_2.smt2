(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str4 () String)
(declare-fun tmp_int15_fresh () Int)
(declare-fun result () Int)
(declare-fun s () String)
(assert (! 
 (and (= (str.to.int tmp_str4) tmp_int15_fresh) (= (= tmp_str4 "") true)) :named a1))
(assert (! 
 (let (($x2187 (= result tmp_int15_fresh)))
 (let (($x2188 (= $x2187 true)))
 (let ((?x288 (int.to.str result)))
 (let (($x289 (= ?x288 s)))
 (let (($x286 (forall ((j Int) )(! (let (($x258 (or (= (= (str.at s j) "8") true) (= (= (str.at s j) "9") true))))
 (let (($x260 (= (= (str.at s j) "7") true)))
 (let (($x263 (= (= (str.at s j) "6") true)))
 (let (($x266 (= (= (str.at s j) "5") true)))
 (let (($x269 (= (= (str.at s j) "4") true)))
 (let (($x272 (= (= (str.at s j) "3") true)))
 (let (($x275 (= (= (str.at s j) "2") true)))
 (let (($x278 (= (= (str.at s j) "1") true)))
 (let (($x279 (or $x278 (or $x275 (or $x272 (or $x269 (or $x266 (or $x263 (or $x260 $x258)))))))))
 (let (($x281 (= (= (str.at s j) "0") true)))
 (let (($x197 (>= j 0)))
 (let (($x284 (and $x197 (< j (str.len s)))))
 (=> $x284 (or $x281 $x279)))))))))))))) :pattern ( (str.at s j) )))
 ))
 (let (($x214 (= s "")))
 (let (($x215 (= $x214 false)))
 (let (($x287 (and $x215 $x286)))
 (ite $x287 $x289 $x2188))))))))) :named a2))
(assert (! 
 (let ((?x211 (str.to.int s)))
 (let (($x212 (= ?x211 result)))
 (not $x212))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE
;tmp_str4 = NO VALUE
;tmp_int15_fresh = -1

;unsat core: a0 a1 a2 

;actual status: timeout
