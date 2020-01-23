(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_int13 () Int)
(declare-fun tmp_str4 () String)
(declare-fun tmp_int15_fresh () Int)
(declare-fun result () Int)
(declare-fun s () String)
(assert (! 
 (let (($x2222 (and (= (= (str.at tmp_str4 tmp_int13) "8") false) (= (= (str.at tmp_str4 tmp_int13) "9") false))))
 (let (($x2224 (and (= (= (str.at tmp_str4 tmp_int13) "6") false) (and (= (= (str.at tmp_str4 tmp_int13) "7") false) $x2222))))
 (let (($x2226 (and (= (= (str.at tmp_str4 tmp_int13) "4") false) (and (= (= (str.at tmp_str4 tmp_int13) "5") false) $x2224))))
 (let (($x2228 (and (= (= (str.at tmp_str4 tmp_int13) "2") false) (and (= (= (str.at tmp_str4 tmp_int13) "3") false) $x2226))))
 (let (($x2230 (and (= (= (str.at tmp_str4 tmp_int13) "0") false) (and (= (= (str.at tmp_str4 tmp_int13) "1") false) $x2228))))
 (let (($x2231 (and (and (>= tmp_int13 0) (< tmp_int13 (str.len tmp_str4))) $x2230)))
 (let ((?x2193 (str.to.int tmp_str4)))
 (let (($x2194 (= ?x2193 tmp_int15_fresh)))
 (and $x2194 $x2231))))))))) :named a1))
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
;tmp_int13 = NO VALUE
;tmp_int15_fresh = -1

;unsat core: a0 a1 a2 

